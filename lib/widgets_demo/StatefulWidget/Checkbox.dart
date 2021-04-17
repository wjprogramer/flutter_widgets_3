import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomCheckbox extends StatefulWidget {
  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool _checked = false;
  bool _checked2 = false;

  final colors = [Colors.red, Colors.yellow, Colors.blue, Colors.green];

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 10,
              children: colors
                  .map((e) =>
                  Checkbox(
                      value: _checked,
                      checkColor: Colors.white,
                      activeColor: e,
                      onChanged: (v) =>
                          setState(() => _checked = v)))
                  .toList(),
            ),
            Wrap(
              spacing: 10,
              children: colors
                  .map((e) =>
                  Checkbox(
                      value: _checked2,
                      tristate: true,
                      checkColor: Colors.white,
                      activeColor: e,
                      onChanged: (v) {
                        print(v);
                        setState(() => _checked2 = v);
                      }))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}


