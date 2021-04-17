import 'dart:ui';

import 'package:flutter/material.dart';

Widget widgetContainer({
  @required Widget child,
  num height = 150.0,
  Widget bottomPanel,
  EdgeInsetsGeometry padding,
  EdgeInsetsGeometry margin,
  AlignmentGeometry alignment,
  Color backgroundColor,
}) {
  var _bottomPanel = Positioned(
    left: 0,
    right: 0,
    bottom: 0,
    child: ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
            sigmaX: 10.0,
            sigmaY: 10.0
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.7),
            border: Border(
              top: BorderSide(
                color: Colors.blue.withOpacity(0.5),
              ),
            ),
          ),
          child: bottomPanel,
        ),
      ),
    ),
  );

  return Container(
    width: double.infinity,
    height: height?.toDouble(),
    margin: margin ?? const EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 16),
    padding: padding,
    alignment: alignment,
    decoration: BoxDecoration(
      border: Border.all(
          color: Colors.blue.withOpacity(0.5)
      ),
      color: backgroundColor,
    ),
    child: Stack(
      children: <Widget>[
        child,
        if (bottomPanel != null)
          _bottomPanel,
      ],
    ),
  );
}