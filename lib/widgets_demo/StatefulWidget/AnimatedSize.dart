import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class AnimatedSizeDemo2 extends StatefulWidget {
  @override
  _AnimatedSizeDemo2State createState() => _AnimatedSizeDemo2State();
}

class _AnimatedSizeDemo2State extends State<AnimatedSizeDemo2> with TickerProviderStateMixin {
  bool _first = true;

  double _width = 200;
  double _height = 200;

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: 300,
      child: Container(
        alignment: Alignment(0, -0.5),
        child: AnimatedSize(
          duration: const Duration(milliseconds: 500),
          curve: Curves.fastOutSlowIn,
          child: Container(
            width: _width,
            height: _height,
            color: Colors.blue,
          ),
          vsync: this,
        ),
      ),
      bottomPanel: Align(
        alignment: Alignment.centerRight,
        child: Switch(
          value: _first,
          onChanged: (v) {
            setState(() {
              _width  = _first ?  220 : 200;
              _height = _first ?  160 : 200;

              _first = v;
            });
          },
        ),
      )
    );
  }
}
