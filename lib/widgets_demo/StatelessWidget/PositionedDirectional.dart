import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomPositionedDirectional extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var yellowBox = Container(
      color: Colors.yellow,
      height: 100,
      width: 100,
    );

    var redBox = Container(
      color: Colors.red,
      height: 90,
      width: 90,
    );

    var greenBox = Container(
      color: Colors.green,
      height: 80,
      width: 80,
    );

    var cyanBox = Container(
      color: Colors.cyanAccent,
      height: 70,
      width: 70,
    );

    return widgetContainer(
      child: Center(
        child: Container(
            width: 200,
            height: 120,
            color: Colors.grey.withAlpha(33),
            child: Stack(
              children: <Widget>[
                yellowBox,
                redBox,
                PositionedDirectional(top: 20, start: 20, child: greenBox),
                PositionedDirectional(
                  child: cyanBox,
                  bottom: 10,
                  end: 10,
                )
              ],
            )),
      ),
    );
  }
}
