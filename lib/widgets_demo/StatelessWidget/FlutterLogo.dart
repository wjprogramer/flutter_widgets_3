import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomFlutterLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var data2 = {
      FlutterLogoStyle.horizontal:Colors.blue,
      FlutterLogoStyle.markOnly:Colors.red,
      FlutterLogoStyle.stacked:Colors.green,
    };

    _c(child) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                blurRadius: 3.0,
              ),
            ]
        ),
        child: child,
      );
    }

    return widgetContainer(
      child: Center(
        child: Wrap(
          children: [
//            ...data2.keys.map((e) => FlutterLogo(
//              size: 40,
//              style: e,
//              textColor: data2[e],
//            ))
//                .toList()
            ...data2.keys
                .map((e) => _c(FlutterLogo(
                  size: 40,
                  style: e,
                  textColor: data2[e],
                ),)
              ).toList()
          ]
        ),
      ),
    );
  }
}