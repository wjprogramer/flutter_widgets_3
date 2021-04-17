import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomBaseline extends StatefulWidget {
  @override
  _CustomBaselineState createState() => _CustomBaselineState();
}

class _CustomBaselineState extends State<CustomBaseline> {
  double _baseline=20;

  @override
  Widget build(BuildContext context) {

    var childBox = Text(
      'Hello World',
      style: TextStyle(fontSize: 20,),
    );

    var baseline = Baseline(
        child: childBox,
        baseline: _baseline,
        baselineType: TextBaseline.alphabetic
    );

    return widgetContainer(
      height: null,
      child: Column(
        children: <Widget>[
          Container(
            width: 100/0.618,
            height: 100,
            color: Colors.grey.withAlpha(22),
            child: baseline,
          ),
          _buildSlider(),
        ],
      ),
    );
  }

  Widget _buildSlider() => Slider(
      divisions: 20,
      min: 0,
      max: 60,
      label: _baseline.toString(),
      value: _baseline,
      onChanged: (v) => setState(() => _baseline = v));
}
