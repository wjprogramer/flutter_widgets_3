import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class AnimatedAlignDemo extends StatefulWidget {
  @override
  _AnimatedAlignDemoState createState() => _AnimatedAlignDemoState();
}

class _AnimatedAlignDemoState extends State<AnimatedAlignDemo> {
  final Alignment start = Alignment(-1.2, -0.5);
  final Alignment end = Alignment(1.2, -0.5);

  Alignment _alignment;

  @override
  void initState() {
    _alignment = start;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: ClipRRect(
        child: Stack(
          children: <Widget>[
            AnimatedAlign(
              alignment: _alignment,
              duration: Duration(milliseconds: 1300),
              curve: Curves.easeInOut,
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
          value: _alignment == end,
          onChanged: (v) {
            setState(() {
              _alignment = v ? end : start;
            });
          }),
      ),
    ),
  );

}
