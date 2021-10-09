import 'package:freezed_annotation/freezed_annotation.dart';
part 'page_node.freezed.dart';
part 'page_node.g.dart';

@freezed
class PageNode with _$PageNode {
  const factory PageNode({
    required String id,
    required String path,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'class_name') required String className,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'project_id') required String projectId,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'created_at') String? createdAt,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'additional_info') Map<String, dynamic>? additionalInfo,
  }) = _PageNode;

  factory PageNode.fromJson(Map<String, dynamic> json) =>
      _$PageNodeFromJson(json);
}
