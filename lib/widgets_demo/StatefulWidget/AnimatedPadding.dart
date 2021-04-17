import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class AnimatedPaddingDemo extends StatefulWidget {
  @override
  _AnimatedPaddingDemoState createState() => _AnimatedPaddingDemoState();
}

class _AnimatedPaddingDemoState extends State<AnimatedPaddingDemo> {
  final EdgeInsets startPadding = EdgeInsets.symmetric(horizontal: 10, vertical: 10);
  final EdgeInsets endPadding = EdgeInsets.symmetric(horizontal: 120, vertical: 20);

  EdgeInsets _padding;

  @override
  void initState() {
    _padding = startPadding;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: ClipRRect(
        child: Stack(
          children: <Widget>[
            _bg(),
            AnimatedPadding(
              duration: Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              padding: _padding,
              onEnd: () => print('End'),
              child: Container(
                alignment: Alignment.center,
                color: Colors.white.withOpacity(0.7),
                child: Image.asset(AssetPath.ICON, width: 100,),
              ),
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
    child: Align(
      alignment: Alignment.centerRight,
      child: Switch(
          value: _padding == endPadding,
          onChanged: (v) {
            setState(() {
              _padding = v ? endPadding : startPadding;
            });
          }),
    ),
  );

  _bg() {
    return Container(
      width: double.infinity,
      child: Opacity(
        opacity: 1.0,
        child: Image.asset(
          AssetPath.BG1,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
