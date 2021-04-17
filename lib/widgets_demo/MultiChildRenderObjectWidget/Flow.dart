import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';
import 'package:flutter_widgets_3/common/my_logger.dart';

final _data = List.generate(
    16, (index) => Container(color: Colors.green[200], width: 16, height: 16)).toList();

Widget flowDemo() {
  return widgetContainer(
    child: Flow(
      delegate: _CircleFlowDelegate(),
      children: _data,
    ),
  );
}

class _CircleFlowDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    MyLogger.info('Flow', 'child size: ${context.getChildSize(0)}');

    double radius = context.size.shortestSide / 2;

    var count = context.childCount;
    var perRad = 2 * pi / count;

    for (int i = 0; i < count; i++) {
      var cSizeX = context.getChildSize(i).width / 2;
      var cSizeY = context.getChildSize(i).height / 2;

      var offsetX = (radius - cSizeX) * cos(i * perRad) + radius;
      var offsetY = (radius - cSizeY) * sin(i * perRad) + radius;

      context.paintChild(i,
        transform: Matrix4.translationValues(
          offsetX - cSizeX + context.size.width / 2 - radius,
          offsetY - cSizeY,
          0.0
        )
      );
    }
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return true;
  }
}
