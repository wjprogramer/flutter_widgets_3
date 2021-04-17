import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';

class DeleteOfChip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: Image.asset(AssetPath.HEAD_ICON),
      label: Text("Hello World"),
      padding: EdgeInsets.all(5),
      labelPadding: EdgeInsets.all(3),
      backgroundColor: Colors.grey.withAlpha(66),
      shadowColor: Colors.orangeAccent,
      deleteIcon: Icon(Icons.close,size: 18),
      deleteIconColor: Colors.red,
      onDeleted: () => {},
      elevation: 3,
    );
  }
}