import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomConstrainedBox extends StatefulWidget {
  @override
  _CustomConstrainedBoxState createState() => _CustomConstrainedBoxState();
}

class _CustomConstrainedBoxState extends State<CustomConstrainedBox> {

  @override
  Widget build(BuildContext context) {

    final _constraints = BoxConstraints(
      minHeight: 50,
      minWidth: 50,
      maxHeight: 80,
      maxWidth: 150,
    );

    var _text = '';
    var box = getBox(
      message: _text,
      color: Colors.green[200],
      constraints: _constraints,
    );

    var _text2 = 'Hello World ! Hello World ! Hello World !';
    var box2 = getBox(
      message: _text2,
      color: Colors.blue[200],
      constraints: _constraints,
    );

    var _text3 = 'Hello World!';
    var box3 = getBox(
      message: _text3,
      color: Colors.orange[200],
      constraints: _constraints,
      alignment: Alignment.center,
    );

    return widgetContainer(
      height: null,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            // ==== Box 1 ================================
            Container(
              color: Colors.green.withAlpha(22),
              width: 300,
              height: 100,
              child: UnconstrainedBox(child: box),
            ),

            // ==== Box 2 ================================
            Container(
              color: Colors.blue.withAlpha(22),
              width: 300,
              height: 100,
              child: UnconstrainedBox(child: box2),
            ),

            // ==== Box 3 ================================
            // Add `alignment.center` or `Center` widget,
            // apply max width and height, regardless of child
            Container(
              color: Colors.orange.withAlpha(22),
              width: 300,
              height: 100,
              child: UnconstrainedBox(child: box3),
            ),

          ],
        ),
      ),
    );
  }

  Widget getBox({
    String message,
    Color color,
    BoxConstraints constraints,
    AlignmentGeometry alignment,
  }) {
    return ConstrainedBox(
      constraints: constraints,
      child: Container(
          color: color,
          alignment: alignment,
          child: Text(
            message,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
      ),
    );
  }

}
