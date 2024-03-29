import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomCupertinoButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = {
      CupertinoColors.activeBlue:4.0,
      Colors.blue:6.0,
      CupertinoColors.activeOrange:8.0,
    };

    return widgetContainer(
      child: Center(
        child: Wrap(
          spacing: 20,
          children:data.keys.map((e)=> CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () => {},
            color: e,
            pressedOpacity: 0.4,
            borderRadius:  BorderRadius.all(Radius.circular(data[e])),
            child: Text("iOS"),
          )).toList()
        ),
      ),
    );
  }
}

