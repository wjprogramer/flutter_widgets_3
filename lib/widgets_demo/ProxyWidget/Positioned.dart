import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomPositioned extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var blueBox = Container(
      color: Colors.blue[200],
      height: 60,
      width: 60,
    );

    var greenBox = Container(
      color: Colors.green[200],
      height: 70,
      width: 70,
    );

    var orangeBox = Container(
      color: Colors.orange[200],
      height: 80,
      width: 80,
    );

    var blackBox = Container(
      color: Colors.black54,
      height: 20,
      width: 20,
    );

    return widgetContainer(
      child: Center(
        child: Container(
          width: 300,
          height: 120,
          color: Colors.grey.withAlpha(33),
          child: Stack(
            children: <Widget>[
              blueBox,
              Positioned(top: 15, left: 45, child: greenBox),
              Positioned(top: 30, left: 100, child: orangeBox),
              Positioned(
                child: blackBox,
                bottom: 10,
                right: 10,
              )
            ],
          ),
        ),
      )
    );
  }
}