import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';

class BlendModeImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: BlendMode.values
          .toList()
          .map((mode) => Column(children: <Widget>[
        Container(
            margin: EdgeInsets.all(5),
            width: 60,
            height: 60,
            color: Colors.red,
            child: Image(
                image: AssetImage(AssetPath.HEAD_ICON),
                color: Colors.blue.withAlpha(88),
                colorBlendMode: mode)),
        Text(mode.toString().split(".")[1])
      ]))
          .toList(),
    );
  }
}