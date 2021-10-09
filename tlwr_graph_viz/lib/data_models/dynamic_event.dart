import 'package:freezed_annotation/freezed_annotation.dart';
part 'dynamic_event.freezed.dart';

@freezed
class DynamicEvent with _$DynamicEvent {
  const factory DynamicEvent({
    required String id,
    DateTime? createdAt,
    required String fromNodeId,
    required String toNodeId,
  }) = _DynamicEvent;
}
