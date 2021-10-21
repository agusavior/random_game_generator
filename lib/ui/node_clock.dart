import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NodeClock extends StatelessWidget {
  final double percent;
  final Color color;
  NodeClock({required this.percent, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(3),
      child: FractionallySizedBox(
        widthFactor: 0.20,
        heightFactor: 0.20,
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(color),
          value: percent,
        ),
      ),
    );
  }
}