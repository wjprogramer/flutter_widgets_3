import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class DefaultTextStyleDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: DefaultTextStyle(
        style: TextStyle(
          fontSize: 18,
          color: Colors.blue,
          decoration: TextDecoration.underline
        ),
        child: Center(
          child: Text("Hello, World",),
        ),
      ),
    );
  }
}