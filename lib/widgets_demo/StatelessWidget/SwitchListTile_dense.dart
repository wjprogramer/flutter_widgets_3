
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';

class DenseSwitchListTile extends StatefulWidget {
  @override
  _DenseSwitchListTileState createState() => _DenseSwitchListTileState();
}

class _DenseSwitchListTileState extends State<DenseSwitchListTile> {
  var _value=false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Colors.grey.withAlpha(22),
      child: SwitchListTile(
        value: _value,
        dense: true,
        selected: _value,
        activeColor: Colors.orangeAccent,
        secondary: Image.asset(AssetPath.HEAD_ICON),
        title: Text("Hello World"),
        subtitle: Text("@Fuck You"),
        onChanged: (v) => setState(() => _value = !_value),
      ),
    );
  }
}