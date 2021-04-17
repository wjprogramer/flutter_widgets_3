import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomMediaQuery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var queryData = MediaQuery.of(context);
    var data = {
      "size":                                 queryData.size,
      "devicePixelRatio":                     queryData.devicePixelRatio.toStringAsFixed(1),
      "textScaleFactor":                      queryData.textScaleFactor.toStringAsFixed(1),
      "platformBrightness":                   queryData.platformBrightness,
      "padding":                              queryData.padding,
      "viewInsets":                           queryData.viewInsets,
      "systemGestureInsets":                  queryData.systemGestureInsets,
      "viewPadding":                          queryData.viewPadding,
      "alwaysUse24HourFormat":                queryData.alwaysUse24HourFormat,
      "accessibleNavigation":                 queryData.accessibleNavigation,
      "invertColors":                         queryData.invertColors,
      "highContrast":                         queryData.highContrast,
      "disableAnimations":                    queryData.disableAnimations,
      "boldText":                             queryData.boldText,
    };

    return widgetContainer(
      height: 250,
      child: ListView(
        children: data.keys.map((e) => _buildItem(e, data)).toList(),
      ),
    );
  }

  Widget _buildItem(String e, Map<String, Object> data) => Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              e,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              data[e].toString(),
              style: TextStyle(fontSize: 16, color: Colors.blue[700]),
            )
          ],
        ),
      ),
      Divider(
        height: 1,
      )
    ],
  );
}