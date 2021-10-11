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

part 'project_form_event.dart';
part 'project_form_state.dart';

part 'project_form_bloc.freezed.dart';

@injectable
class ProjectFormBloc extends Bloc<ProjectFormEvent, ProjectFormState>
    with ProjectValidatorMixin {
  ProjectFormBloc(this._userRepository, this._projectRepository)
      : super(ProjectFormState.initial());

  final IUserRepository _userRepository;
  final IProjectRepository _projectRepository;

  @override
  Stream<ProjectFormState> mapEventToState(
    ProjectFormEvent event,
  ) async* {
    yield* event.map(
      projectSelected: (e) async* {
        yield state.copyWith(
          selectedProjectId: e.projectId,
          projectFailureOrSuccessOption: none(),
        );
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          name: e.name ?? '',
          projectFailureOrSuccessOption: none(),
        );
      },
      create: (e) async* {
        yield* _performActionOnExistsProject(
          _projectRepository.create,
          create: true,
          project: e.project,
        );
      },
      update: (e) async* {
        yield* _performActionOnExistsProject(
          _projectRepository.update,
          project: e.project,
        );
      },
      createOrUpdateComplete: (e) async* {
        yield state.copyWith(
          isSubmitted: false,
          projectFailureOrSuccessOption: none(),
        );
      },
    );
  }

  Stream<ProjectFormState> _performActionOnExistsProject(
      Future<Either<ProjectFailure, Unit>> Function(Project project)
          forwardedCall,
      {bool create = false,
      Project? project}) async* {
    Either<ProjectFailure, Unit>? failureOrSuccess;

    yield state.copyWith(
      isLoading: true,
      projectFailureOrSuccessOption: none(),
    );

    final validationErrorMessage = projectNameValidator(state.name);

    if (create && validationErrorMessage != null) {
      failureOrSuccess =
          left(ProjectFailure.errorWithMessage(validationErrorMessage));
      yield state.copyWith(
        isLoading: false,
        isSubmitted: true,
        projectFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    } else {
      final userOption = await _userRepository.getSignedInUser();
      await userOption.fold(() {
        failureOrSuccess = left(const ProjectFailure.userIsUnAuthenticated());
      }, (user) async {
        if (project != null) {
          failureOrSuccess = await forwardedCall(project);
        } else {
          failureOrSuccess = left(const ProjectFailure.unexpected());
        }
      });

      yield state.copyWith(
        isLoading: false,
        isSubmitted: true,
        projectFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    }
  }
}
