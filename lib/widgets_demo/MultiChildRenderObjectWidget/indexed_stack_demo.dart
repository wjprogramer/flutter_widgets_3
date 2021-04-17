import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomIndexedStack extends StatefulWidget {
  @override
  _CustomIndexedStackState createState() => _CustomIndexedStackState();
}

class _CustomIndexedStackState extends State<CustomIndexedStack> {
  var _index = 1;

  @override
  Widget build(BuildContext context) {
    return _container(
      IndexedStack(
        index: _index,
        children: <Widget>[
          _redBox(),
          _blueBox(),
        ],
      ),
    );
  }

  Widget _container(Widget child) {
    return widgetContainer(
      height: null,
      bottomPanel: _buildSwitch(),
      child: Center(
        child: Container(
          width: 200,
          height: 100,
          margin: const EdgeInsets.only(top: 10, bottom: 60),
          color: Colors.grey.withAlpha(33),
          child: child,
        ),
      )
    );
  }

  Widget _redBox() {
    return Container(
      color: Colors.red,
      width: 80,
      height: 80,
    );
  }

  Widget _blueBox() {
    return Positioned(
      bottom: 10,
      right: 10,
      child: Container(
        color: Colors.blue,
        width: 80,
        height: 80,
      ),
    );
  }

  Widget _buildSwitch() => Align(
    alignment: Alignment.centerRight,
    child: Switch(
      value: _index == 0,
      onChanged: (v) => setState(() => _index = v ? 0 : 1),
    ),
  );
}