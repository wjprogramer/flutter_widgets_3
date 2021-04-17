import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class ShadowText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: Text(
        "Hello World",
        style: TextStyle(
            fontSize: 50,
            color: Colors.white,
            backgroundColor: Colors.black,
            shadows: [
              Shadow(
                  color: Colors.cyanAccent,
                  offset: Offset(1, 1),
                  blurRadius: 10),
              Shadow(
                  color: Colors.blue,
                  offset: Offset(-0.1, 0.1),
                  blurRadius: 10),
            ]),
      ),
    );
  }
}