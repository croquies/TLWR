import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_event.freezed.dart';
part 'dynamic_event.g.dart';

@freezed
class DynamicEvent with _$DynamicEvent {
  const factory DynamicEvent({
    required String id,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'created_at') String? createdAt,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'from') required String fromNodeId,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'to') required String toNodeId,
  }) = _DynamicEvent;

  factory DynamicEvent.fromJson(Map<String, dynamic> json) =>
      _$DynamicEventFromJson(json);
}
