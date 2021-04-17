import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';

class CustomCheckBoxListTile extends StatefulWidget {
  @override
  _CustomCheckBoxListTileState createState() => _CustomCheckBoxListTileState();
}

class _CustomCheckBoxListTileState extends State<CustomCheckBoxListTile> {
  var _selected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Colors.grey.withAlpha(22),
      child: CheckboxListTile(
        value: _selected,
        selected: _selected,
        dense: true,
        checkColor: Colors.yellow,
        activeColor: Colors.orangeAccent,
        secondary: Image.asset(AssetPath.HEAD_ICON),
        title: Text("Hello World"),
        subtitle: Text("@Fuck You"),
        onChanged: (v) => setState(() => _selected = !_selected),
      ),
    );
  }
}

