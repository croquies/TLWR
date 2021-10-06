import 'package:flutter/widgets.dart';
import 'package:tlwr_observer/entities/dynamic_event.dart';

import 'entities/page_node.dart';

class TLWRLogger {
  late final String projectId;

  TLWRLogger._();

  static final TLWRLogger _instance = TLWRLogger._();
  static TLWRLogger get instance => _instance;
  void setProjectId(String id) {
    projectId = id;
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
