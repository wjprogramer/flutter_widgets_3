import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';

class DenseListTile extends StatefulWidget {
  @override
  _DenseListTileState createState() => _DenseListTileState();
}

class _DenseListTileState extends State<DenseListTile> {
  bool _dense = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Colors.grey.withAlpha(22),
      child: ListTile(
        leading: Image.asset(AssetPath.HEAD_ICON),
        title: Text("以梦为马"),
        subtitle: Text("Hello World"),
        selected: false,
        contentPadding: EdgeInsets.all(5),
        trailing: Icon(Icons.more_vert),
        dense: _dense,
        onTap: () => setState(() => _dense = !_dense),
      ),
    );
  }
}
