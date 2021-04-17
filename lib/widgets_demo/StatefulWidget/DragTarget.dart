import 'package:flutter/material.dart';

class CustomDragTarget extends StatefulWidget {
  @override
  _CustomDragTargetState createState() => _CustomDragTargetState();
}

class _CustomDragTargetState extends State<CustomDragTarget> {
  Color _color = Colors.grey;
  String _info = 'DragTarget';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Wrap(
            children: _buildColors(),
            spacing: 10,
          ),
          SizedBox(height: 20,),
          _buildDragTarget()
        ],
      ),
    );
  }

  List<Widget> _buildColors() {
    var colors = [
      Colors.red,
      Colors.yellow,
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.purple,
      Colors.cyanAccent
    ];
    return colors
        .map(
          (e) => Draggable<Color>(
          child: Container(
            width: 30,
            height: 30,
            alignment: Alignment.center,
            child: Text(
              colors.indexOf(e).toString(),
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            decoration: BoxDecoration(color: e, shape: BoxShape.circle),
          ),
          data: e,
          feedback: Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(color: e, shape: BoxShape.circle),
          )),
    )
        .toList();
  }

  Widget _buildDragTarget() {
    return DragTarget<Color>(
        onLeave: (data) => setState(() => _info='onLeave'),
        onAccept: (data) => setState(() {
            _info='onAccept';
            _color = data;
          }),
        onWillAccept: (data) {
          setState(() {
            _info='onWillAccept';
          });
          print("onWillAccept: data = $data ");
          return data != null;
        },
        builder: (context, candidateData, rejectedData) => Container(
            width: 150.0,
            height: 50.0,
            color: _color,
            child: Center(
              child: Text(
                _info,
                style: TextStyle(color: Colors.white),
              ),
            )));
  }
}