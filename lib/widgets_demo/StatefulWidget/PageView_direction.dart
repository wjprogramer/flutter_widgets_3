import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';

class DirectionPageView extends StatelessWidget {
  final data = <Color>[
    Colors.orange[50],
    Colors.orange[100],
    Colors.orange[200],
    Colors.orange[300],
    Colors.orange[400],
    Colors.orange[500],
    Colors.orange[600],
    Colors.orange[700],
    Colors.orange[800],
    Colors.orange[900],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: PageView(
        scrollDirection: Axis.vertical,
        reverse: true,
        onPageChanged: (position) {
          print(position);
        },
        children: data
            .map((color) =>
            Container(
              alignment: Alignment.center,
              width: 90,
              color: color,
              child: Text(
                colorString(color),
                style: TextStyle(color: Colors.white,
                    fontSize: 24, shadows: [
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
