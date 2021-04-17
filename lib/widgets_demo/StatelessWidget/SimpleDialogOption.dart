import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomSimpleDialogOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 50,
            color: Colors.grey.withAlpha(33),
            margin: EdgeInsets.all(5),
            child: SimpleDialogOption(
                onPressed: () {

                },
                child: Text('Hello World')),
          ),
        ],
      ),
    );
  }
}
