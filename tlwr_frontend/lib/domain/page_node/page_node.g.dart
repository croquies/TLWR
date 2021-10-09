// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PageNode _$$_PageNodeFromJson(Map<String, dynamic> json) => _$_PageNode(
      id: json['id'] as String,
      path: json['path'] as String,
      className: json['class_name'] as String,
      projectId: json['project_id'] as String,
      createdAt: json['created_at'] as String?,
      additionalInfo: json['additional_info'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_PageNodeToJson(_$_PageNode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'class_name': instance.className,
      'project_id': instance.projectId,
      'created_at': instance.createdAt,
      'additional_info': instance.additionalInfo,
    };
