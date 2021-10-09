part of 'project_bloc.dart';

@freezed
class ProjectEvent with _$ProjectEvent {
  const factory ProjectEvent.projectSelected(String? id) = _ProjectSelected;
  const factory ProjectEvent.delete(Project? project) = _Delete;
  const factory ProjectEvent.list() = _List;
}
