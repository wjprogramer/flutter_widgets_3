import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class OpacityDemo extends StatefulWidget {
  @override
  _OpacityDemoState createState() => _OpacityDemoState();
}

class _OpacityDemoState extends State<OpacityDemo> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final imageWidth = size.width / 3;
    final image = Image.asset(
      AssetPath.COVERS[0],
      fit: BoxFit.cover,
    );

    return widgetContainer(
      height: null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: Opacity(
              opacity: 0.1,
              child: image,
            ),
          ),
          Expanded(
            child: Opacity(
              opacity: 0.4,
              child: image,
            ),
          ),
          Expanded(
            child: Opacity(
              opacity: 0.7,
              child: image,
            ),
          ),
          Expanded(
            child: Opacity(
              opacity: 1.0,
              child: image,
            ),
          ),
        ],
      ),
    );
  }

}
