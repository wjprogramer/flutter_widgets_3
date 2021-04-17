import 'package:flutter/material.dart';

class CustomTooltip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Tooltip(
      preferBelow: true,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(5),
      message: "天王盖地虎",
      showDuration: Duration(seconds: 3),
      waitDuration: Duration(milliseconds: 200),
      child: Icon(Icons.info_outline),
    );
  }
}
