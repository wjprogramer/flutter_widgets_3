import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

Widget rowDemo() {
  return widgetContainer(
    height: null,
    child: Container(
        height: 70,
        child: Row(
          children: <Widget>[
            Padding(
              child: Icon(
                Icons.location_on,
                size: 30,
                color: Colors.red,
              ),
              padding: EdgeInsets.only(left: 25, right: 20),
            ),
            Expanded(
              child: Text(
                "Taiwan",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              child: Icon(Icons.keyboard_arrow_right, color: Colors.black38),
              padding: EdgeInsets.only(right: 25),
            ),
          ],
        )),
  );
}