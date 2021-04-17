import 'package:flutter/material.dart';

class CustomDraggable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var axis = [null, Axis.vertical, Axis.horizontal];
    return Wrap(
        spacing: 30,
        children: axis
            .map((e) => Draggable(
                  axis: e,
                  child: Container(
                    width: 30,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blue, shape: BoxShape.circle),
                  ),
                  feedback: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                  ),
                ))
            .toList());
  }
}