import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  final colors = [Colors.red, Colors.yellow, Colors.blue, Colors.green];
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: colors
          .map((e) =>
          Switch(
              value: _checked,
              inactiveThumbColor: e,
              inactiveTrackColor: Colors.grey.withAlpha(88),
              activeColor: Colors.green,
              activeTrackColor: Colors.orange,
              onChanged: (v) {
                setState(() => _checked = v);
              }))
          .toList(),
    );
  }
}

