import 'package:tlwr_observer/entities/dynamic_event.dart';

import 'entities/page_node.dart';

class TLWRLogger {
  late final String projectId;

  TLWRLogger._();

  static final TLWRLogger _instance = TLWRLogger._();
  static TLWRLogger get instance => _instance;
  factory TLWRLogger.initialize({required String id}) {
    _instance.projectId = id;
    return _instance;
  }

  Future<void> sendLog({
    required PageNode to,
    PageNode? from,
  }) async {
    final dynamicEvent = DynamicEvent(
      projectId: projectId,
      from: from,
      to: to,
    );
    print(
        "send log project id: ${projectId} \n dynamic event: ${dynamicEvent}");
  }
}
