import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class AnimatedPhysicalModelDemo extends StatefulWidget {
  @override
  _AnimatedPhysicalModelDemoState createState() => _AnimatedPhysicalModelDemoState();
}

class _AnimatedPhysicalModelDemoState extends State<AnimatedPhysicalModelDemo> {
  bool _first = true;

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: Align(
        alignment: Alignment(0, -0.5),
        child: AnimatedPhysicalModel(
          duration: const Duration(milliseconds: 500),
          curve: Curves.fastOutSlowIn,
          elevation: _first ? 0 : 6.0,
          shape: BoxShape.rectangle,
          shadowColor: Colors.black,
          color: Colors.white,
          borderRadius: _first
              ? const BorderRadius.all(Radius.circular(0))
              : const BorderRadius.all(Radius.circular(10)),
          child: Container(
            height: 60.0,
            width: 60.0,
            color: Colors.blue[50],
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ),
      ),
      bottomPanel: Align(
        alignment: Alignment.centerRight,
        child: Switch(
          value: _first,
          onChanged: (v) {
            setState(() {
              _first = v;
            });
          },
        )
      ),
    );
  }
}
