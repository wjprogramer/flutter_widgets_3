import 'package:flutter/material.dart';

class CustomRangeSlider extends StatefulWidget {
  @override
  _CustomRangeSliderState createState() => _CustomRangeSliderState();
}

class _CustomRangeSliderState extends State<CustomRangeSlider> {
  RangeValues _rangeValues = RangeValues(90, 270);

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
        values: _rangeValues,
        divisions: 180,
        min: 0.0,
        max: 360.0,
        labels: RangeLabels("${_rangeValues.start.toStringAsFixed(1)}",
            "${_rangeValues.end.toStringAsFixed(1)}"),
        activeColor: Colors.orangeAccent,
        inactiveColor: Colors.green.withAlpha(99),
        onChangeStart: (value) {
          print('开始滑动:$value');
        },
        onChangeEnd: (value) {
          print('滑动结束:$value');
        },
        onChanged: (value) {
          setState(() {
            _rangeValues = value;
          });
        });
  }
}
