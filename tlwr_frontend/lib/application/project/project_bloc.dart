import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tlwr_frontend/application/project/project_validator_mixin.dart';
import 'package:tlwr_frontend/domain/auth/i_user_repository.dart';
import 'package:tlwr_frontend/domain/project/i_project_repository.dart';
import 'package:tlwr_frontend/domain/project/project.dart';
import 'package:tlwr_frontend/domain/project/project_failure.dart';

part 'project_event.dart';
part 'project_state.dart';

part 'project_bloc.freezed.dart';

@injectable
class ProjectBloc extends Bloc<ProjectEvent, ProjectState>
    with ProjectValidatorMixin {
  ProjectBloc(this._userRepository, this._projectRepository)
      : super(ProjectState.initial());

  final IUserRepository _userRepository;
  final IProjectRepository _projectRepository;

  @override
  Stream<ProjectState> mapEventToState(
    ProjectEvent event,
  ) async* {
    yield* event.map(
      list: (e) async* {
        Either<ProjectFailure, Unit>? failureOrSuccess;

        yield state.copyWith(
          isLoading: true,
          projectFailureOrSuccessOption: none(),
        );

        final projectsOption = await _projectRepository.list();
        List<Project>? projects;
        await projectsOption.fold((failure) async {
          failureOrSuccess = left(failure);
        }, (result) async {
          projects = result;
        });

        yield state.copyWith(
          isLoading: false,
          projects: projects,
          projectFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      delete: (e) async* {
        yield state.copyWith(
          isLoading: true,
          projectFailureOrSuccessOption: none(),
        );

        Either<ProjectFailure, Unit>? failureOrSuccess;
        final userOption = await _userRepository.getSignedInUser();
        await userOption.fold(() {
          failureOrSuccess = left(const ProjectFailure.userIsUnAuthenticated());
        }, (user) async {
          failureOrSuccess =
              await _projectRepository.delete(Project(id: e.projectId));
        });

        yield state.copyWith(
          isLoading: false,
          projectFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
