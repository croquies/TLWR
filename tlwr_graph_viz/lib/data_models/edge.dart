import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tlwr_graph_viz/data_models/node.dart';
part 'edge.freezed.dart';

@freezed
class Edge with _$Edge {
  const factory Edge({
    required Node from,
    required Node to,
    required int frequency,
  }) = _Edge;
}
