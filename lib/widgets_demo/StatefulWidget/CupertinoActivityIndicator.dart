import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomCupertinoActivityIndicator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return widgetContainer(
      height: null,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(8.0),
        child: Wrap(
          spacing: 20,
          children: <Widget>[
            CupertinoActivityIndicator(
              animating: true,
              radius: 25,
            ),
            CupertinoActivityIndicator(
              animating: false,
              radius: 25,
            )
          ],
        ),
      ),
    );
  }
}
