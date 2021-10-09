part of 'project_bloc.dart';

@freezed
class ProjectEvent with _$ProjectEvent {
  const factory ProjectEvent.nameChanged(String? name) = _NameChanged;
  const factory ProjectEvent.projectSelected(String? id) = _ProjectSelected;
  const factory ProjectEvent.carete(Project? project) = _Create;
  const factory ProjectEvent.update(Project? project) = _Update;
  const factory ProjectEvent.delete(Project? project) = _Delete;
  const factory ProjectEvent.list() = _List;
}
