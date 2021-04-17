import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';

class CustomPageView extends StatelessWidget {
  final data = <Color>[
    Colors.green[50],
    Colors.green[100],
    Colors.green[200],
    Colors.green[300],
    Colors.green[400],
    Colors.green[500],
    Colors.green[600],
    Colors.green[700],
    Colors.green[800],
    Colors.green[900],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: PageView(
        onPageChanged: (position){
          print(position);
        },
        children: data
            .map((color) => Container(
          alignment: Alignment.center,
          width: 90,
          color: color,
          child: Text(
            colorString(color),
            style: TextStyle(color: Colors.white,
                fontSize:24,shadows: [
              Shadow(
                  color: Colors.black,
                  offset: Offset(.5, .5),
                  blurRadius: 2)
            ]),
          ),
        ))
            .toList(),
      ),
    );
  }

}
