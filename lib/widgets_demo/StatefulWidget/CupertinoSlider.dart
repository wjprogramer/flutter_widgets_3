import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomCupertinoSlider extends StatefulWidget {
  @override
  _CustomCupertinoSliderState createState() => _CustomCupertinoSliderState();
}

class _CustomCupertinoSliderState extends State<CustomCupertinoSlider> {
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      padding: const EdgeInsets.symmetric(vertical: 16),
      height: null,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Value: ${_value.toStringAsFixed(1)}'),
            CupertinoSlider(
              value: _value,
              divisions: 180,
              min: 0.0,
              max: 360.0,
              activeColor: Colors.blue,
              thumbColor: Colors.white,
              onChangeStart: (value) {
              },
              onChangeEnd: (value) {
              },
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              }
            ),
          ],
        ),
      ),
    );
  }
}
