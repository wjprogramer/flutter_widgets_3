import 'package:flutter/material.dart';

class DeleteDraggable extends StatefulWidget {
  @override
  _DeleteDraggableState createState() => _DeleteDraggableState();
}

class _DeleteDraggableState extends State<DeleteDraggable> {
  List<Color> colors = [
    Colors.red,
    Colors.yellow,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.cyanAccent
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Wrap(
            children: _buildColors(),
            spacing: 10,
          ),
          SizedBox(
            height: 20,
          ),
          _buildDragTarget()
        ],
      ),
    );
  }

  Widget _buildDragTarget() {
    return DragTarget<int>(
        onAccept: (data) {
          setState(() {
            colors.removeAt(data);
          });
        },
        onWillAccept: (data) => data != null,
        builder: (context, candidateData, rejectedData) => Container(
            width: 50.0,
            height: 50.0,
            decoration:
            BoxDecoration(color: Colors.red, shape: BoxShape.circle),
            child: Center(
              child: Icon(Icons.delete_sweep, color: Colors.white),
            )));
  }

  List<Widget> _buildColors() => colors
      .map(
        (e) => Draggable<int>(
        child: Container(
          width: 30,
          height: 30,
          alignment: Alignment.center,
          child: Text(
            colors.indexOf(e).toString(),
            style:
            TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          decoration: BoxDecoration(color: e, shape: BoxShape.circle),
        ),
        data: colors.indexOf(e),
        feedback: Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
              color: e.withAlpha(100), shape: BoxShape.circle),
        )),
  )
      .toList();
}
