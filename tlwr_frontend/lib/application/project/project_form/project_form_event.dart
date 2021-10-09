part of 'project_form_bloc.dart';

@freezed
class ProjectFormEvent with _$ProjectFormEvent {
  const factory ProjectFormEvent.projectSelected(String? projectId) =
      _ProjectSelected;
  const factory ProjectFormEvent.nameChanged(String? name) = _NameChanged;
  const factory ProjectFormEvent.create() = _Create;
  const factory ProjectFormEvent.update(Project? project) = _Update;
  const factory ProjectFormEvent.createOrUpdateComplete() =
      _CreateOrUpdateComplete;
}
