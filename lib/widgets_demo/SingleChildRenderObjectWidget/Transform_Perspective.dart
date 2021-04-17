import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class R3C2 extends StatefulWidget {
  @override
  _R3C2State createState() => _R3C2State();
}

class _R3C2State extends State<R3C2> {
  Matrix4 _m4;
  double _value = 0;
  double _rad = 0;

  @override
  Widget build(BuildContext context) {
    _m4 = Matrix4.identity()
//      ..setEntry(3, 0, _value) // x
//      ..setEntry(3, 1, _value)//   y
      ..setEntry(3, 2, _value) // z
      ..rotateY(_rad)
//      ..rotateX(_rad)
        ;
    return widgetContainer(
      height: null,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Transform(
            transform: _m4,
            child: Container(
                color: Colors.cyanAccent,
                width: 100,
                height: 100,
                child: Image.asset(
                  AssetPath.BG1,
                  fit: BoxFit.cover,
                )),
          ),
          _buildSliders()
        ],
      ),
    );
  }

  Widget _buildSliders() => Column(
    children: <Widget>[
      Slider(
          min: -0.01,
          max: 0.01,
          value: _value,
          divisions: 360,
          label: 'x:${_value.toStringAsFixed(5)}',
          onChanged: (v) {
            setState(() {
              _value = v;
            });
          }),
      Slider(
          min: -pi,
          max: pi,
          value: _rad,
          divisions: 360,
          label: '角度:' + (_rad * 180 / pi).toStringAsFixed(1) + "°",
          onChanged: (v) {
            setState(() {
              _rad = v;
            });
          }),
    ],
  );
}