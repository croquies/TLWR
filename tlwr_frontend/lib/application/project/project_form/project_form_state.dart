part of 'project_form_bloc.dart';

@freezed
class ProjectFormState with _$ProjectFormState {
  const factory ProjectFormState({
    required String? selectedProjectId,
    required String name,
    required bool isLoading,
    required bool isSubmitted,
    required Option<Either<ProjectFailure, Unit>> projectFailureOrSuccessOption,
  }) = _ProjectFormState;

  factory ProjectFormState.initial() => ProjectFormState(
        selectedProjectId: null,
        name: '',
        isLoading: false,
        isSubmitted: false,
        projectFailureOrSuccessOption: none(),
      );
}
