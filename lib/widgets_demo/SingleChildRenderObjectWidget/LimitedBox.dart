import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomLimitedBox extends StatefulWidget {
  @override
  _CustomLimitedBoxState createState() => _CustomLimitedBoxState();
}

class _CustomLimitedBoxState extends State<CustomLimitedBox> {

  @override
  Widget build(BuildContext context) {


    var _text = 'Hello';
    var box = LimitedBox(
      maxHeight: 60,
      maxWidth: 100,
      child: Container(color: Colors.orange[200], child: Text(_text)),
    );

    var _text2 = 'Hello World, Hello World, Hello World, ';
    var box2 = LimitedBox(
      maxHeight: 60,
      maxWidth: 100,
      child: Container(color: Colors.green[200], child: Text(_text2)),
    );

    var _text3 = 'Hello World, Hello World, Hello World, Hello World, Hello World, Hello World, Hello World, Hello World, Hello World, Hello World, Hello World, Hello World, ';
    var box3 = LimitedBox(
      maxHeight: 60,
      maxWidth: 100,
      child: Container(color: Colors.blue[200], child: Text(_text3)),
    );

    return widgetContainer(
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            UnconstrainedBox(child: box),
            UnconstrainedBox(child: box2),
            UnconstrainedBox(child: box3),
          ],
        ),
      ),
    );
  }

}
