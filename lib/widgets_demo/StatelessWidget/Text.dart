import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var style = TextStyle(
      color: Colors.blue,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      letterSpacing: 10,
    );
    return widgetContainer(
      height: null,
      child: Container(
        color: Colors.cyanAccent.withAlpha(33),
        child: Text("Artist-Hello World-2016", style: style),
      ),
    );
  }
}