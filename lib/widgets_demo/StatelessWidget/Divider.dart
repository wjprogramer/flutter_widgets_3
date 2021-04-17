import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var dataColor = [
      Colors.red, Colors.yellow,
      Colors.blue, Colors.green];

    var dataThickness = [1.0, 2.0, 4.0, 6.0];
    var dataValue = [10.0, 20.0, 30.0, 40.0];

    var data = Map.fromIterables(dataColor, dataThickness);

    return widgetContainer(
      child: Column(
        children: [
          /// 1
          ...dataColor
              .map((e) => Divider(
            color: e,
            thickness: data[e],
          ))
              .toList(),

          SizedBox(height: 30,),

          /// 2
          Divider(
            color: Colors.blue,
            indent: 10,
            endIndent: 10.0 * 4,
            height: 10.0,
            thickness: 20,
          )
        ]
      ),
    );
  }
}