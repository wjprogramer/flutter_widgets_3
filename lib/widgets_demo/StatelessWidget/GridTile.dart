import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomGridTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: 200,
      child: GridTile(
        header: GridTileBar(
          backgroundColor: Colors.blue.withAlpha(120),
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
        child: Opacity(
          opacity: 0.7,
          child: Image.asset(
            AssetPath.COVERS[0],
            fit: BoxFit.cover,
          ),
        ),
        footer: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "おっぱい",
            style: TextStyle(shadows: [
                Shadow(
                    color: Colors.blue,
                    offset: Offset(.1, .1),
                    blurRadius: 10
                ),
              ],
              fontSize: 30
            ),
          ),
        ),
      ),
    );
  }
}
