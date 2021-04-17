import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomGridPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
        height: 100,
        child: Positioned(
          left: 0,
          top: 0,
          right: 0,
          bottom: 0,
          child: GridPaper(
              color: Colors.white,
              interval: 50,
              child: Image.asset(
                AssetPath.COVERS[1],
                fit: BoxFit.cover,
                alignment: Alignment(0, -0.5),
              )),
        ));
  }
}