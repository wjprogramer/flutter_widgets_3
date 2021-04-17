import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';

class CustomScrollbar extends StatelessWidget {
  final data = <Color>[
    Colors.purple[50],
    Colors.purple[100],
    Colors.purple[200],
    Colors.purple[300],
    Colors.purple[400],
    Colors.purple[500],
    Colors.purple[600],
    Colors.purple[700],
    Colors.purple[800],
    Colors.purple[900],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Scrollbar(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 5),
          children: data
              .map((color) => Container(
            alignment: Alignment.center,
            width: 100,
            height: 50,
            color: color,
            child: Text(
              colorString(color),
              style: TextStyle(color: Colors.white, shadows: [
                Shadow(
                    color: Colors.black,
                    offset: Offset(.5, .5),
                    blurRadius: 2)
              ]),
            ),
          ))
              .toList(),
        ),
      ),
    );
  }


}