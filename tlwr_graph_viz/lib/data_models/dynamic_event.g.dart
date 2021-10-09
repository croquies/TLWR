// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DynamicEvent _$$_DynamicEventFromJson(Map<String, dynamic> json) =>
    _$_DynamicEvent(
      id: json['id'] as String?,
      createdAt: json['created_at'] as String?,
      fromNodeId: json['from'] as String?,
      toNodeId: json['to'] as String?,
    );

Map<String, dynamic> _$$_DynamicEventToJson(_$_DynamicEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'from': instance.fromNodeId,
      'to': instance.toNodeId,
    };
