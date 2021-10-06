import 'package:flutter/material.dart';

class NodeLayout extends StatefulWidget {
  const NodeLayout({Key? key}) : super(key: key);

  @override
  _NodeLayoutState createState() => _NodeLayoutState();
}

class _NodeLayoutState extends State<NodeLayout> {
  List<Node> nodes = [
    Node(offset: Offset(70, 100), text: 'text1'),
    Node(offset: Offset(200, 100), text: 'text2'),
    Node(offset: Offset(200, 230), text: 'text3'),
  ];

  Function onDragStart(int index) => (x, y) {
        setState(() {
          nodes[index] = nodes[index].copyWithNewOffset(Offset(x, y));
        });
      };

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CustomPaint(
          size: Size(double.infinity, double.infinity),
          painter: CurvedEdgePainter(
            offsets: nodes.map((item) => item.offset).toList(),
          ),
        ),
        ..._buildnodes()
      ],
    );
  }

  List<Widget> _buildnodes() {
    final res = <Widget>[];
    nodes.asMap().forEach((ind, item) {
      res.add(_Item(
        onDragStart: onDragStart(ind),
        offset: item.offset,
        text: item.text,
      ));
    });

    return res;
  }
}

class _Item extends StatelessWidget {
  _Item({
    Key? key,
    required this.offset,
    required this.onDragStart,
    required this.text,
  });

  final double size = 100;
  final Offset offset;
  final Function onDragStart;
  final String text;

  _handleDrag(details) {
    print(details);
    var x = details.globalPosition.dx;
    var y = details.globalPosition.dy;
    onDragStart(x, y);
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: offset.dx - size / 2,
      top: offset.dy - size / 2,
      child: GestureDetector(
        onPanStart: _handleDrag,
        onPanUpdate: _handleDrag,
        child: Container(
          width: size,
          height: size,
          child: Text(text),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.blueAccent,
            ),
          ),
        ),
      ),
    );
  }
}

class CurvedEdgePainter extends CustomPainter {
  CurvedEdgePainter({required this.offsets});

  final List<Offset> offsets;

  @override
  void paint(Canvas canvas, Size size) {
    if (offsets.length > 1) {
      offsets.asMap().forEach((index, offset) {
        if (index == 0) return;
        canvas.drawLine(
          offsets[index - 1],
          offsets[index],
          Paint()
            ..color = Colors.red
            ..strokeWidth = 2,
        );
      });
    }
  }

  @override
  bool shouldRepaint(CurvedEdgePainter oldDelegate) => true;
}

class Node {
  Node({required this.offset, required this.text});

  final Offset offset;
  final String text;

  Node copyWithNewOffset(Offset offset) {
    return Node(offset: offset, text: text);
  }
}
