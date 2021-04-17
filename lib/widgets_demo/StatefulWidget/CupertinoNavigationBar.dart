import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';

import '../../common/widgets/widget_container.dart';

class CustomCupertinoNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: CupertinoNavigationBar(
        transitionBetweenRoutes: false,
        heroTag: 'hero-tag-CupertinoPageTransitionDemo-CupertinoNavigationBar',
        leading: Icon(
          CupertinoIcons.back,
          size: 25,
          color: Colors.blue,
        ),
        middle: Text("Hello"),
        trailing: Image.asset(
          AssetPath.HEAD_ICON,
          width: 25.0,
          height: 25.0,
        ),
        backgroundColor: Color(0xfff1f1f1),
        padding: EdgeInsetsDirectional.only(start: 10,end: 20),
        border: Border.all(color: Colors.transparent),
      ),
    );
  }
}
