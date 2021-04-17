import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: Center(
        child: Container(
          width: 80,
          height: 60,
          color: Colors.green[200],
        ),
      ),
    );
  }
}
