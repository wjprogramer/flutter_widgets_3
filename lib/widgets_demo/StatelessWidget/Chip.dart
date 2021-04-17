import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
class CustomChip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      children: <Widget>[
        Chip(
          avatar: Image.asset(AssetPath.HEAD_ICON),
          label: Text("Hello World", style: TextStyle(fontSize: 30),),
          padding: EdgeInsets.all(5),
          labelPadding: EdgeInsets.all(5),
        ),
        Chip(
          avatar: CircleAvatar(
              backgroundImage:
              AssetImage(AssetPath.COVERS[2])),
          label: Text("百里巫缨"),
          padding: EdgeInsets.all(8),
          labelPadding: EdgeInsets.all(6),
        ),
      ],
    );
  }
}