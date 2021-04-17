import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomClipPath extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      backgroundColor: Colors.black87,
      child: Center(
        child: ClipPath(
          clipper: ShapeBorderClipper(
            shape: _StarShapeBorder()
          ),
          child: Image.asset(
            AssetPath.BG1,
            width: 150,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class _StarShapeBorder extends ShapeBorder {
  final Path _path = Path();

  @override
  EdgeInsetsGeometry get dimensions => null;

  @override
  Path getInnerPath(Rect rect, {TextDirection textDirection}) {
    return null;
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) =>
      nStarPath(20, rect.height / 2, rect.height / 2 * 0.85,
          dx: rect.width / 2, dy: rect.height / 2);

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {}

  Path nStarPath(int num, double R, double r, {dx = 0, dy = 0}) {
    double perRad = 2 * pi / num;
    double radA = perRad / 2 / 2;
    double radB = 2 * pi / (num - 1) / 2 - radA / 2 + radA;

    _path.moveTo(cos(radA) * R + dx, -sin(radA) * R + dy);

    for (int i = 0; i < num; i++) {
      _path
        ..lineTo(
            cos(radA + perRad * i) * R + dx,
            -sin(radA + perRad * i) * R + dy
        )
        ..lineTo(
            cos(radB + perRad * i) * r + dx,
            -sin(radB + perRad * i) * r + dy
        );
    }

    _path.close();
    return _path;
  }

  @override
  ShapeBorder scale(double t) {
    return null;
  }
}
