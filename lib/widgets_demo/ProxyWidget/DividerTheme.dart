import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

dividerThemeDemo() {
  return widgetContainer(
    height: null,
    child: DividerTheme(
      data: DividerThemeData(
        color: Colors.green,
        thickness: 2,
        space: 10,
        indent: 20,
        endIndent: 10,
      ),
      child: _content(),
    ),
  );
}

_content() {
  return Container(
    child: Wrap(
      spacing: 10,
      children: <Widget>[
        Divider(),
        Divider(),
        Divider(),
        Divider(),
        Divider(),
        Container(
          color: Colors.green[100],
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(30, (index) => VerticalDivider(),),
          ),
        )
      ],
    ),
    color: Colors.green[200],
  );
}