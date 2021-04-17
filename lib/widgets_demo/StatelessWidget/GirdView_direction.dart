import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';

class HorizontalGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: 200,
      child: GridView.count(
        scrollDirection: Axis.horizontal,
        reverse: false,
        crossAxisCount: 3,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        childAspectRatio: 0.618,
        children: sColorData3
            .map((color) => _buildItem(color))
            .toList(),
      ),
    );
  }

  Container _buildItem(Color color) => Container(
    alignment: Alignment.center,
    width: 100,
    height: 30,
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
  );


}