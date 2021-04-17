import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';


class TextCupertinoTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var queryData = CupertinoTheme.of(context).textTheme;
    var styles = {
      "tabLabelTextStyle: ": queryData.tabLabelTextStyle,
      "actionTextStyle: ": queryData.actionTextStyle,
      "navActionTextStyle: ": queryData.navActionTextStyle,
      "textStyle: ": queryData.textStyle,
      "navTitleTextStyle: ": queryData.navTitleTextStyle,
      "pickerTextStyle: ": queryData.pickerTextStyle,
      "dateTimePickerTextStyle: ": queryData.dateTimePickerTextStyle,
      "navLargeTitleTextStyle: ": queryData.navLargeTitleTextStyle,
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
              "@hello",
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