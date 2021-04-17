import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class AnimatedOpacityDemo extends StatefulWidget {
  @override
  _AnimatedOpacityDemoState createState() => _AnimatedOpacityDemoState();
}

class _AnimatedOpacityDemoState extends State<AnimatedOpacityDemo> {
  double _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: ClipRRect(
        child: Stack(
          children: <Widget>[
            AnimatedOpacity(
              duration: Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              opacity: _opacity,
              onEnd: () => print('End'),
              child: Align(
                alignment: Alignment(0, -0.2),
                child: Image.asset(AssetPath.ICON, width: 100,)
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
    child: Container(
      height: 50,
      child: Align(
        alignment: Alignment.centerRight,
        child: Switch(
            value: _opacity == 0.0,
            onChanged: (v) {
              setState(() {
                _opacity = v ? 0.0 : 1.0;
              });
            }),
      ),
    ),
  );

}
