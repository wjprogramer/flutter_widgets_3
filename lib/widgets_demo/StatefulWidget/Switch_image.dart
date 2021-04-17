import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';

class ImageSwitch extends StatefulWidget {
  @override
  _ImageSwitchState createState() => _ImageSwitchState();
}

class _ImageSwitchState extends State<ImageSwitch> {
  final imgs = [
    AssetPath.COVERS[0],
    AssetPath.COVERS[1],
    AssetPath.COVERS[2],
    AssetPath.COVERS[3]
  ];
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: imgs
          .map((e) =>
          Switch(
              value: _checked,
              inactiveThumbImage: AssetImage(e),
              activeThumbImage: AssetImage(AssetPath.COVERS[0]),
              onChanged: (v) {
                setState(() => _checked = v);
              }))
          .toList(),
    );
  }
}

