import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomBackdropFilter extends StatefulWidget {
  @override
  _CustomBackdropFilterState createState() => _CustomBackdropFilterState();
}

class _CustomBackdropFilterState extends State<CustomBackdropFilter> {
  double _sigmaX = 1.2;
  double _sigmaY = 1.2;

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              _buildImage(),
              Positioned.fill(
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: _sigmaX, sigmaY: _sigmaY),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.black.withAlpha(0),
                      child: Center(child: Text('BackdropFilter', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
                    ),
                  ),
                ),
              )
            ],
          ),
          _buildSliders()
        ],
      ),
    );
  }

  Widget _buildImage() {
    return Wrap(
      spacing: 20,
      children: <Widget>[
        Container(
          height: 150,
          width: 150,
          child: Image.asset(
            AssetPath.COVERS[4],
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 150,
          width: 150,
          child: Image.asset(
            AssetPath.BG1,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget _buildSliders() => Container(
    margin: const EdgeInsets.only(top: 16),
    decoration: BoxDecoration(
      border: Border(
        top: BorderSide(
          color: Colors.blue[200],
        )
      )
    ),
    child: Column(
      children: <Widget>[
        Slider(
            min: 0,
            max: 4,
            value: _sigmaX,
            divisions: 360,
            label: 'x:' + _sigmaX.toStringAsFixed(1),
            onChanged: (v) {
              setState(() {
                _sigmaX = v;
              });
            }),
        Slider(
            min: 0,
            max: 4,
            value: _sigmaY,
            divisions: 360,
            label: 'beta:' + _sigmaY.toStringAsFixed(1),
            onChanged: (v) {
              setState(() {
                _sigmaY = v;
              });
            })
      ],
    ),
  );
}
