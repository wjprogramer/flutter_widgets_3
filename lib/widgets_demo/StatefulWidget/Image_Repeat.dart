import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';

class RepeatImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: ImageRepeat.values
          .toList()
          .map((mode) => Column(children: <Widget>[
        Container(
            margin: EdgeInsets.all(5),
            width: 150,
            height: 60,
            color: Colors.red,
            child: Image(
                image: AssetImage(AssetPath.COVERS[1]),
                repeat: mode
            )
          ),
        Text(mode.toString().split(".")[1])
      ]))
          .toList(),
    );
  }
}