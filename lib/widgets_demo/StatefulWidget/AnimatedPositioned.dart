import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class AnimatedPositionedDemo extends StatefulWidget {
  @override
  _AnimatedPositionedDemoState createState() => _AnimatedPositionedDemoState();
}

class _AnimatedPositionedDemoState extends State<AnimatedPositionedDemo> {
  final startTop = 0.0;
  final endTop = 15.0;

  var _top = 0.0;

  @override
  void initState() {
    _top = startTop;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: ClipRRect(
        child: Stack(
          children: <Widget>[
            _bg(),
            AnimatedPositioned(
              duration: Duration(milliseconds: 700),
              top: _top + 5,
              left: _top * 4 + 10,
              curve: Curves.fastOutSlowIn,
              child: Image.asset(AssetPath.Q_CHARACTER1, width: 85,),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 700),
              top: 30 - _top,
              left: 300 - _top * 4,
              curve: Curves.fastOutSlowIn,
              child: Image.asset(AssetPath.Q_CHARACTER2, width: 70,),
            ),
            _buildSwitch(),
          ],
        ),
      ),
    );
  }

  Widget _buildSwitch() => Positioned(
    bottom: 0,
    right: 0,
    left: 0,
    child: Container(
      height: 50,
      child: Align(
        alignment: Alignment.centerRight,
        child: Switch(
            value: _top == endTop,
            onChanged: (v) {
              setState(() {
                _top = v ? endTop : startTop;
              });
            }),
      ),
    ),
  );

  _bg() {
    return Container(
      width: double.infinity,
      child: Opacity(
        opacity: 0.2,
        child: Image.asset(
          AssetPath.BG2,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
