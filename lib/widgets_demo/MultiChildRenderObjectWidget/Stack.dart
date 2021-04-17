import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

Widget stackDemo() {
  return widgetContainer(
    child: Center(
      child: Container(
        child: Stack(
          children: List.generate(5, (index) {
            final colorIndex = 100 * (index + 1);
            return Container(
              width: 100 * (5.0 - index) / 5,
              height: 100 * (5.0 - index) / 5,
              color: Colors.blue[colorIndex],
            );
          }),
        ),
      ),
    ),
  );
}