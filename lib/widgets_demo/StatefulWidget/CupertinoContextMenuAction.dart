import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomCupertinoContextMenuAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: 200,
              margin: EdgeInsets.all(5),
              child: CupertinoContextMenuAction(
                  trailingIcon: CupertinoIcons.settings,
                  isDefaultAction: true,
                  onPressed: () =>  {  },
                  child: Text('Hello World')),
            ),
            Container(
              width: 200,
              margin: EdgeInsets.all(5),
              child: CupertinoContextMenuAction(
                  trailingIcon: CupertinoIcons.home,
                  isDefaultAction: false,
                  onPressed: () =>  {  },
                  child: Text('Hello World')),
            ),
          ],
        ),
      ),
    );
  }
}
