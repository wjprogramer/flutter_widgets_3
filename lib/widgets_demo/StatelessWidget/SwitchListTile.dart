import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';

class CustomSwitchListTile extends StatefulWidget {
  @override
  _CustomSwitchListTileState createState() => _CustomSwitchListTileState();
}

class _CustomSwitchListTileState extends State<CustomSwitchListTile> {
  var _value = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Colors.grey.withAlpha(22),
      child: SwitchListTile(
        value: _value,
        inactiveThumbColor:Colors.cyanAccent ,
        inactiveTrackColor: Colors.blue.withAlpha(88),
        activeColor: Colors.orangeAccent,
        activeTrackColor: Colors.orange,
        secondary: Image.asset(AssetPath.HEAD_ICON),
        title: Text("Hello World"),
        subtitle: Text("@Fuck You"),
        onChanged: (v) => setState(() => _value = !_value),
      ),
    );
  }
}
