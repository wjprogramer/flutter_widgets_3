import 'package:flutter/material.dart';

class DivisionsSlider extends StatefulWidget {
  @override
  _DivisionsSliderState createState() => _DivisionsSliderState();
}

class _DivisionsSliderState extends State<DivisionsSlider> {
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Slider(
        value: _value,
        min: 0.0,
        max: 360.0,
        divisions: 10,
        label: '${_value.toStringAsFixed(1)}',
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
            _value = value;
          });
        });
  }
}
