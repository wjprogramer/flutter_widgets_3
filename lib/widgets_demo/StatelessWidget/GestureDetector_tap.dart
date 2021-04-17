import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class TapGestureDetector extends StatefulWidget {
  @override
  _TapGestureDetectorState createState() => _TapGestureDetectorState();
}

class _TapGestureDetectorState extends State<TapGestureDetector> {
  var _info = '';

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: GestureDetector(
        onTapDown: (detail) => setState(() => _info =
        'onTapDown:\n相对落点:${detail.localPosition}\n绝对落点:${detail.globalPosition}'),
        onTapUp: (detail) => setState(() => _info =
        'onTapUp:\n相对落点:${detail.localPosition}\n绝对落点:${detail.globalPosition}'),
        onTapCancel: () => setState(() => _info = 'onTapCancel'),
        child: Center(
          child: Container(
            alignment: Alignment.center,
            width: 300,
            height: 300 * 0.618,
            color: Colors.grey.withAlpha(33),
            child: Text(
              _info,
              style: TextStyle(fontSize: 18, color: Colors.blue),
            ),
          ),
        ),
      ),
    );
  }
}