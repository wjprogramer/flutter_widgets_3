import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';

class CustomListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Colors.grey.withAlpha(22),
      child: ListTile(
        leading: Image.asset(AssetPath.HEAD_ICON),
        title: Text("以梦为马"),
        subtitle: Text("Hello World"),
        contentPadding: EdgeInsets.all(5),
        trailing: Icon(Icons.more_vert),
        onLongPress: () => {  },
      ),
    );
  }
}