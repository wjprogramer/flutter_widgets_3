import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      padding: const EdgeInsets.all(8.0),
      child:  Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              child: Placeholder(
                color: Colors.orangeAccent,
                strokeWidth: 2,
              ),
            ),
            UnconstrainedBox(
              child:  Placeholder(
                color: Colors.blue,
                strokeWidth: 2,
                fallbackHeight: 100,
                fallbackWidth: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}