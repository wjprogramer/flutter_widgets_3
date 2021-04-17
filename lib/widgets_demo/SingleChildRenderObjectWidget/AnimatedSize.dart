import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class AnimatedSizeDemo extends StatefulWidget {
  @override
  _AnimatedSizeDemoState createState() => _AnimatedSizeDemoState();
}

class _AnimatedSizeDemoState extends State<AnimatedSizeDemo>
    with TickerProviderStateMixin {

  final double start = 100;
  final double end = 200;

  double _width;

  @override
  void initState() {
    super.initState();
    _width = start;
  }

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      bottomPanel: _buildSwitch(),
      child: Center(
        child: Container(
          color: Colors.grey.withAlpha(22),
          width: 200,
          height: 100,
          margin: const EdgeInsets.only(bottom: 60, top: 10),
          alignment: Alignment.center,
          child: AnimatedSize(
            vsync: this,
            duration: Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            alignment: Alignment(0, 0),
            child: Container(
              height: 40,
              width: _width,
              alignment: Alignment.center,
              color: Colors.blue,
              child: Text(
                'Hello World',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSwitch() => Align(
    alignment: Alignment.centerRight,
    child: Switch(
        value: _width == end,
        onChanged: (v) {
          setState(() {
            _width = v ? end : start;
          });
        }),
  );
}
