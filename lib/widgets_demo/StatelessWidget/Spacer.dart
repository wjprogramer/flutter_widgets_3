import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class OneSpacer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      widgetContainer(
        height: null,
        child: Container(
          color: Colors.grey.withAlpha(33),
          child: Row(children: <Widget>[
            Container(
              alignment: Alignment.center,
              width: 100,
              height: 50,
              color: Colors.red,
            ),
            Spacer(),
            Container(
              alignment: Alignment.center,
              width: 60,
              height: 50,
              color: Colors.blue,
            ),
          ],),
        ),
      );
  }
}