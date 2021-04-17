import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

Widget richTextDemo() {
  return widgetContainer(
    child: Center(
      child: RichText(
        text: TextSpan(
          text: 'Flutter ',
          style: TextStyle(color: Colors.black, fontSize: 18),
          children: <InlineSpan>[
            WidgetSpan(
                child: Image.asset(
                  AssetPath.COVERS[0],
                  width: 80,
                ),
                alignment: PlaceholderAlignment.baseline,
                baseline: TextBaseline.ideographic),
            TextSpan(
              text: ' is Awesome',
              style: TextStyle(
                color: Colors.blue, fontSize: 18,
                decoration: TextDecoration.underline),
            ),
            TextSpan(
              text: '.\n                  ',
            ),
            WidgetSpan(
              child: Transform.translate(
                offset: Offset(0, -50),
                child: FlutterLogo(size: 30,)
              ),
              alignment: PlaceholderAlignment.baseline,
              baseline: TextBaseline.ideographic
            ),
          ],
        ),
      ),
    ),
  );
}
