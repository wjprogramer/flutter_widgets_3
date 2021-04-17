import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomCupertinoTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: CupertinoTheme(
          data: CupertinoThemeData(
            primaryColor: Colors.blue,
            primaryContrastingColor: Colors.green
          ),
          child: Center(child: _ChildUseTheme())),
    );
  }
}

class _ChildUseTheme extends StatelessWidget {
  const _ChildUseTheme({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            color: CupertinoTheme.of(context).primaryContrastingColor,
          ),
          Container(
              width: 150,
              child: Slider(value: 0.8, onChanged: (v) => {})),
          Container(  width: 150,child: Divider(color:CupertinoTheme.of(context).primaryContrastingColor,thickness: 1,))
        ]);
  }
}