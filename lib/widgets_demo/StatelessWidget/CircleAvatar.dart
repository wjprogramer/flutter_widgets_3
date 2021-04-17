import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomCircleAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: Center(
        child: CircleAvatar(
          radius: 50,
          minRadius: null,
          maxRadius: null,
          backgroundImage: AssetImage(AssetPath.COVERS[2]),
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          child: Icon(
            Icons.check,
            size: 100,
          ),
        ),
      ),
    );
  }
}
