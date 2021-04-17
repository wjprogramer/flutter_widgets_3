import 'package:flutter/material.dart';

class DecorationTooltip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Tooltip(
        preferBelow: false,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(2),
        message: "宝塔镇河妖",
        textStyle: TextStyle(
            color: Colors.red,
            shadows: [Shadow(color: Colors.white,
                offset: Offset(1, 1))]),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.orangeAccent,
              offset: Offset(1, 1), blurRadius: 8)
        ]),
        child: Icon(Icons.info_outline));
  }
}
