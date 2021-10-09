import 'package:freezed_annotation/freezed_annotation.dart';

part 'project.freezed.dart';
part 'project.g.dart';

@freezed
class Project with _$Project {
  const factory Project({
    String? id,
    String? name,
    String? owner,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'created_at') String? createdAt,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
}
