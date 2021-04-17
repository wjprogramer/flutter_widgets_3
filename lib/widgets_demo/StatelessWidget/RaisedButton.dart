import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomRaisedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: Center(
        child: RaisedButton(
          color: Colors.blue,
          splashColor: Colors.green,
          onPressed: () {},
          child: Text("RaisedButton"),
          textColor: Color(0xffFfffff),
          padding: EdgeInsets.all(8),
          elevation: 5,
          highlightColor: Color(0xffF88B0A),
        ),
      ),
    );
  }
}
