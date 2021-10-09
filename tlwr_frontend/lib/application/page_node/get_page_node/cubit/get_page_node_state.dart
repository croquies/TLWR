part of 'get_page_node_cubit.dart';

@freezed
class GetPageNodeState with _$GetPageNodeState {
  const factory GetPageNodeState.initial() = _Initial;
  const factory GetPageNodeState.holding(KtList<PageNode> nodes) = _Holding;
  const factory GetPageNodeState.failed() = _Failed;
}
