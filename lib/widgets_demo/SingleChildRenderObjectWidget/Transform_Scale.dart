import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/matrix_view.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class ScaleTransform extends StatefulWidget {
  @override
  _ScaleTransformState createState() => _ScaleTransformState();
}

class _ScaleTransformState extends State<ScaleTransform> {
  Matrix4 _m4;
  double _x = 1.0;
  double _y = 1.0;
  double _z = 1.0;

  @override
  void initState() {
    _m4 = Matrix4.identity();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[_buildTransform(), Matrix4Shower(_m4, highlightIndices: [0, 5, 10,],)],
          ),
          _buildSliders()
        ],
      ),
    );
  }

  Widget _buildTransform() {
    _m4 = Matrix4.diagonal3Values(_x, _y, _z);
    return Transform(
      transform: _m4,
      child: Container(
          color: Colors.cyanAccent,
          width: 100,
          height: 100,
          child: Image.asset(
            AssetPath.BG1,
            fit: BoxFit.cover,
          )),
    );
  }

  Widget _buildSliders() => Column(
    children: <Widget>[
      Slider(
          min: -2,
          max: 2,
          value: _x,
          divisions: 360,
          label: 'x:${_x.toStringAsFixed(1)}',
          onChanged: (v) {
            setState(() {
              _x = v;
            });
          }),
      Slider(
          min: -2,
          max: 2,
          value: _y,
          divisions: 360,
          label: 'y:${_y.toStringAsFixed(1)}',
          onChanged: (v) {
            setState(() {
              _y = v;
            });
          }),
      Slider(
          min: -2,
          max: 2,
          value: _z,
          divisions: 360,
          label: 'z:${_z.toStringAsFixed(1)}',
          onChanged: (v) {
            setState(() {
              _z = v;
            });
          })
    ],
  );
}