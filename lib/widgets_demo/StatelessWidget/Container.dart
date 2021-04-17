import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomContainer extends StatelessWidget {
  static const rainbow = <int>[
    0xffff0000,
    0xffFF7F00,
    0xffFFFF00,
    0xff00FF00,
    0xff00FFFF,
    0xff0000FF,
    0xff8B00FF
  ];

  @override
  Widget build(BuildContext context) {
    var stops = [0.0, 1 / 6, 2 / 6, 3 / 6, 4 / 6, 5 / 6, 1.0];

    return widgetContainer(
      height: null,
      child: Center(
        child: Container(
          alignment: Alignment.bottomRight,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(10),
          width: 200,
          height: 200 * 0.618,
          color: null,
          transform: Matrix4
              .identity()
              ..rotateX(20 * pi / 180)
              ..rotateY(20 * pi / 180),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                stops: stops,
                colors: rainbow.map((e) => Color(e)).toList()),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                bottomRight: Radius.circular(50)
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(1, 1),
                    blurRadius: 5,
                    spreadRadius: 1),
              ]),
          constraints: BoxConstraints(
              minWidth: 100, maxWidth: 150,
              minHeight: 20, maxHeight: 100),
          child: Icon(
            Icons.android,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}