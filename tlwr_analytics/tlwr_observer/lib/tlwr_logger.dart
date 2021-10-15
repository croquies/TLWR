import 'package:dio/dio.dart';

import 'entities/page_node.dart';

const String uri = "https://tlwr.herokuapp.com";
const String dynamicEventPath = "dynamicevents";

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
    final dio = Dio();
    final data = {
      "project_id": projectId,
      "from": {
        "path": from?.path ?? "null path",
        "class_name": from?.className ?? "null class",
        "additional_info": {"initial": true}
      },
      "to": {
        "path": to.path,
        "class_name": to.className ?? "null class",
        "additional_info": {"initial": true}
      }
    };
    await dio.post('$uri/$dynamicEventPath', data: data);
  }
}
