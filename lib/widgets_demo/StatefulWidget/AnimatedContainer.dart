import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class AnimatedContainerDemo extends StatefulWidget {
  @override
  _AnimatedContainerDemoState createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  final Decoration startDecoration = BoxDecoration(
    color: Colors.white.withOpacity(0.1),
  );

  final Decoration endDecoration = BoxDecoration(
    color: Colors.white.withOpacity(0.5),
  );

  final Alignment startAlign = Alignment(-1.2, -0.5);
  final Alignment endAlign = Alignment(1.2, -0.5);

  final startHeight = 100.0;
  final endHeight = 50.0;

  Decoration _decoration;
  Alignment _alignment;

  @override
  void initState() {
    _alignment = startAlign;
    _decoration = startDecoration;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: ClipRRect(
        child: Stack(
          children: <Widget>[
            _bg(),
            AnimatedContainer(
              alignment: _alignment,
              duration: Duration(milliseconds: 3300),
              curve: Curves.fastOutSlowIn,
              decoration: _decoration,
              onEnd: () => print('End'),
              child: Container(
                margin: EdgeInsets.all(5),
                child: Image.asset(AssetPath.ICON_COLORFUL, width: 100,),
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
      color: Colors.brown,
      child: Align(
        alignment: Alignment.centerRight,
        child: Switch(
          value: _alignment == endAlign,
          onChanged: (v) {
            setState(() {
              _decoration = v ? endDecoration : startDecoration;
              _alignment = v ? endAlign : startAlign;
            });
          }),
      ),
    ),
  );

  _bg() {
    return Container(
      width: double.infinity,
      child: Image.asset(
        AssetPath.BG2,
        fit: BoxFit.cover,
      ),
    );
  }
}
