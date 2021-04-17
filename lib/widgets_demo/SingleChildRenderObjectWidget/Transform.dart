import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomTransform extends StatefulWidget {
  @override
  _CustomTransformState createState() => _CustomTransformState();
}

class _CustomTransformState extends State<CustomTransform> {
  var angle = 0.0;
  var m = [
    1.0,
    0.0,
    0.0,
    0.0,
    0.0,
    1.0,
    0.0,
    0.0,
    0.0,
    0.1,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    1.0,
  ];

  @override
  Widget build(BuildContext context) {
    var transform = Transform(
      transform: Matrix4(m[0], m[1], m[2], m[3], m[4], m[5], m[6], m[7], m[8],
          m[9], m[10], m[11], m[12], m[13], m[14], m[15]),
      child: Container(
          alignment: Alignment.center,
          color: Colors.cyanAccent,
          width: 100,
          height: 100,
          child: Image.asset(
            AssetPath.BG1,
            fit: BoxFit.cover,
          )),
    );

    return widgetContainer(
      height: null,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                color: Colors.grey.withAlpha(22),
                width: 200,
                height: 150,
                child: transform,
              ),
              Text(
                '${m[0]},${m[1]},${m[2]},${m[3]},\n'
                '${m[4]},${m[5]},${m[6]},${m[7]},\n'
                '${m[8]},${m[9]},${m[10]},${m[11]},\n'
                '${m[12]},${m[13]},${m[14]},${m[15]}\n',
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
          Container(
            height: 240,
            child: _buildSliders(),
          ),
        ],
      ),
    );
  }

  Widget _buildSliders() => GridView.count(
    physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 8,
      children: m
          .asMap()
          .keys
          .map((i) => Slider(
              value: m[i],
              max: 1.0,
              min: 0.0,
              divisions: 10,
              onChanged: (v) {
                setState(() {
                  m[i] = v;
                });
              }))
          .toList());
}
