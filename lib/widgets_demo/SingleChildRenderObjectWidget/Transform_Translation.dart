import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/matrix_view.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';


class TranslationTransform extends StatefulWidget {
  @override
  _TranslationTransformState createState() => _TranslationTransformState();
}

class _TranslationTransformState extends State<TranslationTransform> {
  Matrix4 _m4;
  double _x = 0;
  double _y = 0;
  double _z = 0;

  @override
  void initState() {
    _m4 = Matrix4.identity();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildTransform(),
              ],
            ),
              _buildSliders()
            ],
          ),
          Positioned(
            bottom: 25.0,
            left: 0.0,
            right: 0.0,
            child: IgnorePointer(
              child: Container(
                width: double.infinity,
                alignment: Alignment(0.0, 0.0),
                child: Matrix4Shower(
                  _m4, highlightIndices: [3, 7, 11],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTransform() {
    _m4 = Matrix4.translationValues(_x, _y, _z);
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
          min: -100,
          max: 100,
          value: _x,
          divisions: 360,
          label: 'x:${_x.toStringAsFixed(1)}',
          onChanged: (v) {
            setState(() {
              _x = v;
            });
          }),
      Slider(
          min: -100,
          max: 100,
          value: _y,
          divisions: 360,
          label: 'y:${_y.toStringAsFixed(1)}',
          onChanged: (v) {
            setState(() {
              _y = v;
            });
          }),
      Slider(
          min: -100,
          max: 100,
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
