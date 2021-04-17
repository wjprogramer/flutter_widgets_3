import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomClipOval extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      backgroundColor: Colors.black87,
      child: Center(
        child: Wrap(
          spacing: 20,
          children: <Widget>[
            ClipOval(
              child: Image.asset(
                AssetPath.BG1,
                fit: BoxFit.cover,
                width: 150,
                height: 100,
              ),
            ),
            ClipOval(
              child: Image.asset(
                AssetPath.BG1,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}