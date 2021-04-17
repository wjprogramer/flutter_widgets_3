import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class ShapeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: Center(
        child: Card(
          color: Color(0xffB3FE65),
          elevation: 6,
          shape: StarShapeBorder(),
          child: Container(
            alignment: Alignment.center,
            width: 100,
            height: 100,
            child: Text("Card", style: TextStyle(fontSize: 20)),
          ),
        ),
      ),
    );
  }
}

class StarShapeBorder extends ShapeBorder {
  @override
  EdgeInsetsGeometry get dimensions => null;

  @override
  Path getInnerPath(Rect rect, {TextDirection textDirection}) {
    return null;
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) =>
      Pather.create.nStarPath(9, 50, 40, dx: 50, dy: 50);

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {
  }

  @override
  ShapeBorder scale(double t) {
    return null;
  }
}

class Pather {
  Pather._();

  static Pather create = Pather._();

  Path _path = Path();

  Path nStarPath(int num, double R, double r, {dx = 0, dy = 0}) {
    _path.reset();//重置路径
    double perRad = 2 * pi / num;//每份的角度
    double radA = perRad / 2 / 2;//a角
    double radB = 2 * pi / (num - 1) / 2 - radA / 2 + radA;//起始b角
    _path.moveTo(cos(radA) * R + dx, -sin(radA) * R + dy);//移动到起点
    for (int i = 0; i < num; i++) {//循环生成点，路径连至
      _path.lineTo(cos(radA + perRad * i) * R + dx, -sin(radA + perRad * i) * R + dy);
      _path.lineTo(cos(radB + perRad * i) * r + dx, -sin(radB + perRad * i) * r + dy);
    }
    _path.close();
    return _path;
  }
}
