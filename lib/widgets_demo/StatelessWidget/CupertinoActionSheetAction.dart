import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomCupertinoActionSheetAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5),
            color: Colors.grey.withAlpha(33),
            child: CupertinoActionSheetAction(
                isDefaultAction: true,
                onPressed: () => {

                },
                child: Text('Hello World')),
          ),
          Container(
            color: Colors.grey.withAlpha(33),
            margin: EdgeInsets.all(5),
            child: CupertinoActionSheetAction(
                isDefaultAction: false,
                onPressed: () => {

                },
                child: Text('Fuck You')),
          ),
        ],
      ),
    );
  }
}
