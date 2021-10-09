part of 'project_bloc.dart';

@freezed
class ProjectState with _$ProjectState {
  const factory ProjectState({
    required String selectedProjectId,
    required String name,
    required bool isLoading,
    required List<Project>? projects,
    required Option<Either<ProjectFailure, Unit>> projectFailureOrSuccessOption,
  }) = _ProjectState;

  factory ProjectState.initial() => ProjectState(
        selectedProjectId: '',
        name: '',
        isLoading: false,
        projects: null,
        projectFailureOrSuccessOption: none(),
      );
}
