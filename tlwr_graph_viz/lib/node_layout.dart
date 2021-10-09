import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kt_dart/collection.dart';
import 'dart:math' as math;

import 'data_models/edge.dart';
import 'data_models/node.dart';

const pink = Color(0xffD95789);
const blue = Color(0xff005789);

class NodeLayout extends StatefulWidget {
  final KtList<Node> nodes;
  final KtList<Edge> edges;
  final double height;
  final double width;
  const NodeLayout({
    Key? key,
    required this.nodes,
    required this.edges,
    this.height = 1000,
    this.width = 1000,
  }) : super(key: key);

  @override
  _NodeLayoutState createState() => _NodeLayoutState();
}

class _NodeLayoutState extends State<NodeLayout> {
  KtList<NodeLocation> nodeLocations = emptyList<NodeLocation>();

  KtList<NodeLocation> _nodesToLocations({
    required KtList<Node> nodes,
    required double screenWidth,
    required double screenHeight,
  }) {
    final random = math.Random();
    return nodes.mapIndexed(
      (i, p0) => NodeLocation(
          offset: Offset(
              (i + 2) * screenWidth / (nodes.size + 4),
              (random.nextInt(nodes.size) + 1) *
                  screenHeight /
                  (nodes.size + 4)),
          id: p0.id),
    );
  }

  @override
  void initState() {
    nodeLocations = _nodesToLocations(
      nodes: widget.nodes,
      screenWidth: widget.width,
      screenHeight: widget.height,
    );
    super.initState();
  }

  Function onDragStart(String id) => (x, y) {
        setState(() {
          nodeLocations = nodeLocations.map(
            (nodeLoc) => nodeLoc.id == id
                ? nodeLoc.copyWithNewOffset(Offset(x, y))
                : nodeLoc,
          );
        });
      };

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
            child: Container(
          color: const Color(0xff18191F),
        )),
        CustomPaint(
          size: const Size(double.infinity, double.infinity),
          painter: CurvedEdgePainter(
            offsets: nodeLocations.map((item) => item.offset).asList(),
            edges: _getEdgeLocations(widget.edges),
          ),
        ),
        ..._buildnodes()
      ],
    );
  }

  List<Widget> _buildnodes() {
    final res = <Widget>[];
    nodeLocations.forEachIndexed((ind, item) {
      final foundNode = widget.nodes.first((node) => node.id == item.id);
      res.add(
        _Item(
          onDragStart: onDragStart(item.id),
          offset: item.offset,
          node: foundNode,
          text: foundNode.label,
        ),
      );
    });

    return res;
  }

  KtList<EdgeLocation> _getEdgeLocations(KtList<Edge> edges) {
    return edges.map(
      (edge) => EdgeLocation(
        fromOffset:
            nodeLocations.first((nodeLoc) => nodeLoc.id == edge.from.id).offset,
        toOffset:
            nodeLocations.first((nodeLoc) => nodeLoc.id == edge.to.id).offset,
        width: edge.frequency.toDouble(),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  _Item({
    Key? key,
    required this.offset,
    required this.onDragStart,
    required this.text,
    required this.node,
  });

  double size = 60;
  final Offset offset;
  final Function onDragStart;
  final String text;
  final Node node;

  _handleDrag(DragUpdateDetails details) {
    var x = offset.dx + details.delta.dx;
    var y = offset.dy + details.delta.dy;
    onDragStart(x, y);
  }

  _handleDragStart(details) {
    var x = details.globalPosition.dx;
    var y = details.globalPosition.dy;
    onDragStart(offset.dx, offset.dy);
  }

  @override
  Widget build(BuildContext context) {
    size = node.frequency * size;
    return Positioned(
      left: offset.dx - size / 2,
      top: offset.dy - size / 2,
      child: GestureDetector(
        onPanStart: _handleDragStart,
        onPanUpdate: _handleDrag,
        child: Container(
          width: size,
          height: size,
          child: Center(
              child: Text(
            node.path,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )),
          decoration: const BoxDecoration(
            color: blue,
            borderRadius: BorderRadius.all(
              Radius.circular(
                10,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CurvedEdgePainter extends CustomPainter {
  CurvedEdgePainter({
    required this.offsets,
    required this.edges,
  });

  final List<Offset> offsets;
  final KtList<EdgeLocation> edges;

  @override
  void paint(Canvas canvas, Size size) {
    edges.forEach((edge) {
      canvas.drawLine(
        edge.fromOffset,
        edge.toOffset,
        Paint()
          ..color = pink
          ..strokeWidth = 2.0 * edge.width,
      );
    });

    // if (offsets.length > 1) {
    //   offsets.asMap().forEach((index, offset) {
    //     if (index == 0) return;
    //     canvas.drawLine(
    //       offsets[index - 1],
    //       offsets[index],
    //       Paint()
    //         ..color = Colors.red
    //         ..strokeWidth = 2,
    //     );
    //   });
    // }
  }

  @override
  bool shouldRepaint(CurvedEdgePainter oldDelegate) => true;
}

class NodeLocation {
  NodeLocation({required this.offset, required this.id});

  final Offset offset;
  final String id;

  updateOffset(Offset offset) {
    offset = offset;
  }

  NodeLocation copyWithNewOffset(Offset offset) {
    return NodeLocation(offset: offset, id: id);
  }
}

class EdgeLocation {
  EdgeLocation({
    required this.fromOffset,
    required this.toOffset,
    required this.width,
  });

  final Offset fromOffset;
  final Offset toOffset;
  final double width;
}
