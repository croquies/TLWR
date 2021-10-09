import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import 'package:tlwr_graph_viz/data_models/dynamic_event.dart';
import 'package:tlwr_graph_viz/data_models/edge.dart';
import 'package:tlwr_graph_viz/node_layout.dart';

import 'data_models/node.dart';

class TLWRGraphWidget extends StatelessWidget {
  final KtList<DynamicEvent> dynamicEvents;
  final KtList<Node> nodes;

  const TLWRGraphWidget({
    Key? key,
    required this.dynamicEvents,
    required this.nodes,
  }) : super(key: key);

  KtMap<String, Node> _transformToNodeMap(KtList<Node> nodeList) {
    return nodeList.fold<KtMutableMap<String, Node>>(
        KtMutableMap<String, Node>.empty(), (acc, p1) {
      acc[p1.id] = p1;
      return acc;
    }).toMap();
  }

  KtList<Edge> _transformToEdgeList(
      KtList<DynamicEvent> events, KtMap<String, Node> nodeMap) {
    final groupedEvents = dynamicEvents.groupBy<KtPair<String, String>>(
        (p0) => KtPair(p0.fromNodeId!, p0.toNodeId!));
    return groupedEvents.map<Edge>(
      (group) => Edge(
          from: nodeMap[group.key.first]!,
          to: nodeMap[group.key.second]!,
          frequency: group.value.size),
    );
  }

  @override
  Widget build(BuildContext context) {
    final nodeMap = _transformToNodeMap(nodes);
    final edges = _transformToEdgeList(dynamicEvents, nodeMap);
    return Container(
      alignment: Alignment.center,
      child: NodeLayout(
        nodes: nodes.sortedBy((node) => dynamicEvents
            .first((event) => event.fromNodeId == node.id)
            .createdAt!),
        edges: edges,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}
