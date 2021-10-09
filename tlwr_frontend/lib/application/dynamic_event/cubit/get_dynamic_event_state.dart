part of 'get_dynamic_event_cubit.dart';

@freezed
class GetDynamicEventState with _$GetDynamicEventState {
  const factory GetDynamicEventState.initial() = _Initial;
  const factory GetDynamicEventState.holding(KtList<DynamicEvent> events) =
      _Holding;
  const factory GetDynamicEventState.failed() = _Failed;
}
