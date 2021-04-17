import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class ImageDemo extends StatefulWidget {
  @override
  _ImageDemoState createState() => _ImageDemoState();
}

class _ImageDemoState extends State<ImageDemo> {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: Container(
        width: double.infinity,
        height: 150,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Image.asset(AssetPath.COVERS[4], fit: BoxFit.cover,)
        )
      )
    );
  }
}
