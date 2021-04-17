import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';

class ColorOfChip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      children: <Widget>[
        Chip(
          avatar: Image.asset(AssetPath.HEAD_ICON),
          label: Text("Hello World"),
          padding: EdgeInsets.all(5),
          labelPadding: EdgeInsets.all(5),
          backgroundColor: Colors.grey.withAlpha(66),
          shadowColor: Colors.orangeAccent,
          elevation: 3,
        ),
        Chip(
          avatar: Image.asset(AssetPath.HEAD_ICON),
          label: Text("Hello World"),
          padding: EdgeInsets.all(5),
          labelPadding: EdgeInsets.all(5),
          backgroundColor: Colors.cyanAccent.withAlpha(11),
          shadowColor: Colors.blue.withAlpha(88),
          elevation: 4,
        ),
      ],
    );
  }
}