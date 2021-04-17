
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomCupertinoContextMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildCupertinoContextMenu(context),
    );
  }

  final info= ['Download','Share','Add To Favorite'];

  Widget _buildCupertinoContextMenu(context) => widgetContainer(
    child: Center(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetPath.COVERS[6]),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        width: 100,
        height: 100,
        child: CupertinoContextMenu(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AssetPath.COVERS[6]),
                      fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
              actions: info.map((e)=>CupertinoContextMenuAction(
                child: Center(child: Text(e)),
                onPressed: () => Navigator.pop(context),
              )).toList())
      ),
    ),
  );
}
