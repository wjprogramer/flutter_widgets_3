import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomCupertinoSwitch extends StatefulWidget {
  @override
  _CustomCupertinoSwitchState createState() => _CustomCupertinoSwitchState();
}

class _CustomCupertinoSwitchState extends State<CustomCupertinoSwitch> {
  final colors = List.generate(4, (index) => Colors.blue[(index + 1) * 200]);

  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: Center(
        child: Wrap(
          spacing: 10,
          children: colors
              .map((e) => CupertinoSwitch(
              value: _checked,
              activeColor: e,
              onChanged: (v) {
                setState(() => _checked = v);
              }))
              .toList(),
        ),
      ),
    );
  }
}
