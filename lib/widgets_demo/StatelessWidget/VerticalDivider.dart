import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomVerticalDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var dataColor = [
      Colors.red, Colors.yellow,
      Colors.blue, Colors.green];
    var dataThickness = [1.0, 2.0, 4.0, 6.0];
    var data = Map.fromIterables(dataColor, dataThickness);

    return widgetContainer(
      height: 150,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: dataColor
            .map((e) => VerticalDivider(
          color: e,
          thickness: data[e],
        ))
            .toList(),
      ),
    );
  }
}