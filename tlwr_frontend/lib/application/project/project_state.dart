part of 'project_bloc.dart';

@freezed
class ProjectState with _$ProjectState {
  const factory ProjectState({
    required bool isLoading,
    required List<Project>? projects,
    required Option<Either<ProjectFailure, Unit>> projectFailureOrSuccessOption,
  }) = _ProjectState;

  factory ProjectState.initial() => ProjectState(
        isLoading: false,
        projects: null,
        projectFailureOrSuccessOption: none(),
      );
}
