import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tlwr_frontend/domain/auth/i_user_repository.dart';
import 'package:tlwr_frontend/domain/project/i_project_repository.dart';
import 'package:tlwr_frontend/domain/project/project.dart';
import 'package:tlwr_frontend/domain/project/project_failure.dart';

part 'project_event.dart';
part 'project_state.dart';

part 'project_bloc.freezed.dart';

@injectable
class ProjectBloc extends Bloc<ProjectEvent, ProjectState> {
  ProjectBloc(this._userRepository, this._projectRepository)
      : super(ProjectState.initial());

  final IUserRepository _userRepository;
  final IProjectRepository _projectRepository;

  @override
  Stream<ProjectState> mapEventToState(
    ProjectEvent event,
  ) async* {
    yield* event.map(
      nameChanged: (e) async* {
        yield state.copyWith(
          name: e.name ?? '',
          projectFailureOrSuccessOption: none(),
        );
      },
      projectSelected: (e) async* {
        yield state.copyWith(
          id: e.id ?? '',
          projectFailureOrSuccessOption: none(),
        );
      },
      list: (e) async* {
        Either<ProjectFailure, Unit>? failureOrSuccess;

        yield state.copyWith(
          isLoading: true,
          projectFailureOrSuccessOption: none(),
        );

        final projectsOption = _projectRepository.list();
        await projectsOption.fold(() {
          failureOrSuccess = left(const ProjectFailure.userIsUnAuthenticated());
        }, (projects) async {
          failureOrSuccess = projects;
        });

        yield state.copyWith(
          isLoading: false,
          projectFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      carete: (e) async* {
        yield* _performAction(
          _projectRepository.create,
        );
      },
      delete: (e) async* {
        yield* _performAction(
          _projectRepository.delete,
        );
      },
      update: (e) async* {
        yield* _performAction(
          _projectRepository.update,
        );
      },
    );
  }

  Stream<ProjectState> _performAction(
    Future<Either<ProjectFailure, Unit>> Function(Project project)
        forwardedCall,
  ) async* {
    Either<ProjectFailure, Unit>? failureOrSuccess;

    yield state.copyWith(
      isLoading: true,
      projectFailureOrSuccessOption: none(),
    );

    final userOption = await _userRepository.getSignedInUser();
    await userOption.fold(() {
      failureOrSuccess = left(const ProjectFailure.userIsUnAuthenticated());
    }, (user) async {
      failureOrSuccess = await forwardedCall(
          Project(id: state.id, name: state.name, owner: user.id));
    });

    yield state.copyWith(
      isLoading: false,
      projectFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
