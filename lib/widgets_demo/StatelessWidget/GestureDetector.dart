import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomGestureDetector extends StatefulWidget {
  @override
  _CustomGestureDetectorState createState() => _CustomGestureDetectorState();
}

class _CustomGestureDetectorState extends State<CustomGestureDetector> {
  var _info = '';

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: GestureDetector(
        onTap: () => setState(() => _info = 'onTap'),
        onDoubleTap: () => setState(() => _info = 'onDoubleTap'),
        onLongPress: () => setState(() => _info = 'onLongPress'),
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 300 * 0.4,
          color: Colors.grey.withAlpha(33),
          child: Text(
            _info,
            style: TextStyle(fontSize: 18, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}