import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/matrix_view.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

import 'package:flutter_widgets_3/common/assets_path.dart';

//          "斜切x由R0C1数控制,入参为弧度值,表示斜切角度\n"
//          "斜切y由R1C0数控制,入参为弧度值,表示斜切角度",
class SkewTransform extends StatefulWidget {
  @override
  _SkewTransformState createState() => _SkewTransformState();
}

class _SkewTransformState extends State<SkewTransform> {
  Matrix4 _m4;
  double _alpha = -0.7;
  double _beta = 0.7;

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
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildTransform(),
              Matrix4Shower(
                _m4,
                highlightIndices: [1, 4],
              ),
            ],
          ),
          _buildSliders()
        ],
      ),
    );
  }

  Widget _buildTransform() {
    _m4 = Matrix4.skew(_alpha, _beta);

    return Container(
      height: 150,
      width: 150,
      child: Center(
        child: Transform(
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
      ),
    );
  }

  Widget _buildSliders() {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Table(
        columnWidths: const <int, TableColumnWidth>{
          0: FlexColumnWidth(1),
          1: FlexColumnWidth(2),
        },
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        border: TableBorder.all(
            color: Colors.grey, width: 1.0, style: BorderStyle.solid
        ),
        children: [
          TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('skew/alpha (${_alpha.toStringAsFixed(1)})'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Slider(
                      min: -pi,
                      max: pi,
                      value: _alpha,
                      divisions: 360,
                      label: 'alpha:' + (_alpha * 180 / pi).toStringAsFixed(1) + "°",
                      onChanged: (v) {
                        setState(() {
                          _alpha = v;
                        });
                      }
                  ),
                ),
              ]
          ),
          TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('skew/beta ${_beta.toStringAsFixed(1)}'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Slider(
                      min: -pi,
                      max: pi,
                      value: _beta,
                      divisions: 360,
                      label: 'beta:' + (_beta * 180 / pi).toStringAsFixed(1) + "°",
                      onChanged: (v) {
                        setState(() {
                          _beta = v;
                        });
                      }),
                ),
              ]
          ),
//            TableRow(
//                children: [
//                  Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: Text(''),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.all(8.0),
//                  ),
//                ]
//            ),
//            TableRow(
//                children: [
//                  Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: Text(''),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.all(8.0),
//                  ),
//                ]
//            ),
        ],
      ),
    );
  }
}