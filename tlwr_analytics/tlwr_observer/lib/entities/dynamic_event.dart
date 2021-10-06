import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tlwr_observer/entities/page_node.dart';

part 'dynamic_event.freezed.dart';

@freezed
class DynamicEvent with _$DynamicEvent {
  const factory DynamicEvent({
    required String projectId,
    PageNode? from,
    required PageNode to,
  }) = _DynamicEvent;
}
