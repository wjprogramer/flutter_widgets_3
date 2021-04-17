import 'package:flutter/material.dart';

class ShapeFAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = {
      Colors.red: Icons.add,
      Colors.blue: Icons.bluetooth,
      Colors.green: Icons.android,
    };
    return Wrap(
        spacing: 20,
        children: data.keys
            .map((e) => FloatingActionButton(
          heroTag:  e.toString()+"c",
          onPressed: () {},
          backgroundColor: e,
          shape: StarBorder(),
          foregroundColor: Colors.white,
          child: Icon(data[e]),
          tooltip: "android",
          elevation: 5,
        ))
            .toList());
  }
}

/// 边线形状类
class StarBorder extends ShapeBorder {
  @override
  EdgeInsetsGeometry get dimensions => null;

  @override
  Path getInnerPath(Rect rect, {TextDirection textDirection}) {
    return null;
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    return Path()
      ..moveTo(0, 0)
      ..lineTo(rect.width, 0)
      ..lineTo(rect.width, rect.height)
      ..lineTo(0, rect.height);
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {

  }

  @override
  ShapeBorder scale(double t) {
    return null;
  }
}