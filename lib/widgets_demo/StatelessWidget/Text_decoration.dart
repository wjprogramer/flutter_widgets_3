import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class DecorationText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: Text(
        "2016/11/29",
        style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            decorationThickness: 3,
            decorationStyle: TextDecorationStyle.wavy,
            decorationColor: Colors.blue,
            fontStyle: FontStyle.italic,
            fontFamily: "DancingScript",
            letterSpacing: 10),
      ),
    );
  }
}