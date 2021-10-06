import 'package:flutter/material.dart';
import 'package:tlwr_graph_viz/node_layout.dart';

class TLWRGraphWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: NodeLayout(),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}
