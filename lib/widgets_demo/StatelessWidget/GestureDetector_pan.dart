import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class PanGestureDetector extends StatefulWidget {
  @override
  _PanGestureDetectorState createState() => _PanGestureDetectorState();
}

class _PanGestureDetectorState extends State<PanGestureDetector> {
  var _info = '';

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: GestureDetector(
        onPanDown: (detail) => setState(() => _info =
        'onPanDown:\n相对落点:${detail.localPosition}\n绝对落点:${detail.globalPosition}'),
        onPanEnd: (detail) => setState(() => _info =
        'onPanEnd:\n初速度:${detail.primaryVelocity}\n最终速度:${detail.velocity}'),
        onPanUpdate: (detail) => setState(() => _info =
        'onPanUpdate:\n相对落点:${detail.localPosition}\n绝对落点:${detail.globalPosition}'),
        onPanStart: (detail) => setState(() => _info =
        'onPanStart:\n相对落点:${detail.localPosition}\n绝对落点:${detail.globalPosition}'),
        onPanCancel: () => setState(() => _info = 'onTapCancel'),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
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
      ),
    );
  }
}
