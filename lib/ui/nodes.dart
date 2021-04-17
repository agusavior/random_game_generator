import 'package:first_flutter_app/data/moor_database.dart';
import 'package:first_flutter_app/game/game.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

class Slot extends StatefulWidget {
  final Node node;

  Slot({required this.node});

  @override
  _SlotState createState() => _SlotState();
}

class _SlotState extends State<Slot> {
  bool hover = false;
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return DragTarget<Node>(
      onWillAccept: (value) {
        final b = widget.node.id != value!.id;
        setState(() { hover = b; });
        return true;
      },
      onAccept: (value) {
        setState(() { hover = false; });
      },
      onLeave: (value) {
        setState(() { hover = false; });
      },
      builder: (context, data, rejectData) {
        final base = Center(
          child: Text(
            '${widget.node.number}',
            style: Theme.of(context).textTheme.headline4,
          ),
        );
        final withColor = Container(
          child: base,
          color: selected? Colors.amber : const Color(0xff2980b9),
        );
        final withPadding = AnimatedPadding (
            padding: EdgeInsets.all(hover? 5 : 2),
            duration: const Duration(milliseconds: 100),
            curve: Curves.easeInOut,
            child: withColor
        );
        final withFixedSize = Container(
          child: withPadding,
          width: 64,
          height: 64,
        );
        final withTapping = InkWell(
            onTap: () {
              setState(() {
                selected = !this.selected;
              });
              _openModalBottomSheet(context);
            },
            child: withFixedSize
        );
        return LongPressDraggable(
            child: withTapping,
            feedback: Opacity(opacity: 0.5, child: withFixedSize),
            childWhenDragging: withFixedSize,
            data: widget.node
        );
      },
    );
  }

  void _openModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(child: Wrap(
            children: [],
          )
          );
        }
    );
  }
}


class NodeList extends StatelessWidget {
  List<Node> nodes;
  NodeList({required this.nodes}) {

  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Wrap(
        direction: Axis.horizontal,
        children: nodes.map((n) =>
            Slot(node: n)
        ).toList(),
      ),
    );
  }
}

class NodeListOrSplashWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Node>>(
      stream: Game.instance.watchAll(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Waiting.");
        } else if (snapshot.connectionState == ConnectionState.done) {
          return Text("Done.");
        } else if (snapshot.hasError) {
          throw snapshot.error!;
        } else {
          List<Node>? nodes = snapshot.data;
          if (nodes == null) {
            return Text("Data is null");
          } else {
            return NodeList(
                nodes: nodes
            );
          }
        }
      }
    );
  }
}