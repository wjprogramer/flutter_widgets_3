import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';

class SelectSwitchListTile extends StatefulWidget {
  @override
  _SelectSwitchListTileState createState() => _SelectSwitchListTileState();
}

class _SelectSwitchListTileState extends State<SelectSwitchListTile> {
  var _value = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Colors.grey.withAlpha(22),
      child: SwitchListTile(
        value: _value,
        selected: _value,
        activeColor: Colors.orangeAccent,
        secondary: Image.asset(AssetPath.HEAD_ICON),
        inactiveThumbImage: AssetImage(AssetPath.COVERS[2]),
        activeThumbImage: AssetImage(AssetPath.HEAD_ICON),
        title: Text("Hello World"),
        subtitle: Text("@Fuck You"),
        onChanged: (v) => setState(() => _value = !_value),
      ),
    );
  }
}