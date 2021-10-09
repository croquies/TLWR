import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_event.freezed.dart';
part 'dynamic_event.g.dart';

@freezed
class DynamicEvent with _$DynamicEvent {
  const factory DynamicEvent({
    String? id,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'created_at') String? createdAt,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'from') String? fromNodeId,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'to') String? toNodeId,
  }) = _DynamicEvent;

  factory DynamicEvent.fromJson(Map<String, dynamic> json) =>
      _$DynamicEventFromJson(json);
}
