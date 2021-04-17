import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomGridTileBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: GridTileBar(
        backgroundColor: Colors.blue.withAlpha(100),
        trailing: Icon(
          Icons.star,
          color: Colors.red,
        ),
        leading: CircleAvatar(
          backgroundImage: AssetImage(AssetPath.COVERS[2]),
        ),
        title: Text("百里·巫缨"),
        subtitle: Text("倾国必倾城"),
      ),
    );
  }
}
