import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class TextThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var queryData = Theme.of(context).textTheme;
    var styles = {
      "headline: ": queryData.headline5,
      "title: ": queryData.headline6,
      "subtitle1: ": queryData.subtitle1,
      "subtitle: ": queryData.bodyText1,
      "body2: ": queryData.bodyText1,
      "button: ": queryData.button,
      "overline: ": queryData.overline,
      "subtitle2: ": queryData.subtitle2,
      "button2: ": queryData.caption,
      "display1: ": queryData.headline4,
      "display2: ": queryData.headline3,
      "display3: ": queryData.headline2,
      "display4: ": queryData.headline1,
    };

    return widgetContainer(
      height: null,
      child: Column(
        children: styles.keys.map((e) => buildItem(e, styles[e])).toList(),
      ),
    );
  }

  Widget buildItem(String e, TextStyle style) => Column(
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
              "@AI",
              style: style,
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