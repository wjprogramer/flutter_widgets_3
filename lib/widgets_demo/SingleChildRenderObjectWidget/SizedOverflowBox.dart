import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomSizedOverflowBox extends StatefulWidget {

  @override
  _CustomSizedOverflowBoxState createState() => _CustomSizedOverflowBoxState();
}

class _CustomSizedOverflowBoxState extends State<CustomSizedOverflowBox> {
  double _x = 50;
  double _y = 44;

  @override
  Widget build(BuildContext context) {
    var box = SizedOverflowBox(
      alignment: Alignment.bottomRight,
      size: Size(_x, _y),
      child: Container(width: 30, height: 50, color: Colors.orange),
    );

    return widgetContainer(
      height: null,
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            color: Colors.grey.withAlpha(88),
            width: 250,
            height: 60,
            child: Container(color: Colors.blue, child: box)
          ),
          _buildSlider()
        ],
      ),
    );
  }

  Widget _buildSlider() =>
      Column(
        children: <Widget>[
          Slider(
              divisions: 100,
              min: 0,
              max: 250,
              label: 'x:' + _x.toStringAsFixed(1),
              value: _x,
              onChanged: (v) => setState(() => _x = v)),
          Slider(
              divisions: 100,
              min: 0,
              max: 100,
              label: 'y:' + _y.toStringAsFixed(1),
              value: _y,
              onChanged: (v) => setState(() => _y = v)),

        ],
      );
}
