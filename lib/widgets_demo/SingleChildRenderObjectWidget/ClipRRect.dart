import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomClipRRect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      backgroundColor: Colors.black87,
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
          child: Image.asset(
            AssetPath.BG3,
            width: 150,
            height: 100,
          ),
        ),
      ),
    );
  }
}
