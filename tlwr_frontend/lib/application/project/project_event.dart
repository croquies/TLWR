part of 'project_bloc.dart';

@freezed
class ProjectEvent with _$ProjectEvent {
  const factory ProjectEvent.create(String ownerId, {String? projectName}) =
      _Create;
  const factory ProjectEvent.delete(String projectId) = _Delete;
  const factory ProjectEvent.list() = _List;
}
