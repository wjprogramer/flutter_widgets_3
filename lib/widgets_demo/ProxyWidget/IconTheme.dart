import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

iconThemeDemo() {
  return widgetContainer(
    padding: const EdgeInsets.all(8),
    height: null,child: IconTheme(
      data: IconThemeData(
        color: Colors.orange[300],
        opacity: 1.0,
        size: 40
      ),
      child: _content(),
    ),
  );
}

_content() {
  return Center(
    child: Wrap(
      spacing: 10,
      children: <Widget>[
        Icon(Icons.add),
        Icon(Icons.ac_unit),
        Icon(Icons.g_translate),
        Icon(Icons.remove),
        Icon(CupertinoIcons.add),
        Icon(CupertinoIcons.add_circled),
        Icon(CupertinoIcons.group),
      ],
    ),
  );
}