import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = [Colors.red,Colors.yellow,Colors.blue,Colors.green];

    return widgetContainer(
      height: null,
      child: Wrap(
        spacing: 10,
        children: data.map((e)=>BackButton(
          color: e,
        )).toList()
      ),
    );
  }
}
