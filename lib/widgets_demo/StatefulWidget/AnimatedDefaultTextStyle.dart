import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class AnimatedDefaultTextStyleDemo extends StatefulWidget {
  @override
  _AnimatedDefaultTextStyleDemoState createState() => _AnimatedDefaultTextStyleDemoState();
}

class _AnimatedDefaultTextStyleDemoState extends State<AnimatedDefaultTextStyleDemo> {

  final TextStyle start = TextStyle(
      color: Colors.blue,
      fontSize: 50,
      shadows: [
        Shadow(offset: Offset(1, 1), color: Colors.black, blurRadius: 3)
      ],
  );

  final TextStyle end = TextStyle(
      color: Colors.white,
      fontSize: 20,
      shadows: [
        Shadow(offset: Offset(1, 1), color: Colors.orange, blurRadius: 3)
      ],
  );

  TextStyle _style;

  @override
  void initState() {
    _style = start;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: Stack(
        children: <Widget>[
          AnimatedDefaultTextStyle(
            textAlign: TextAlign.start,
            softWrap: true,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            duration: Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            style: _style,
            onEnd: () => print('End'),
            child: Center(
              child: Text(
                'Hello World',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          _buildSwitch(),
        ],
      ),
    );
  }

  Widget _buildSwitch() => Positioned(
    bottom: 0,
    right: 0,
    child: Switch(
        value: _style == end,
        onChanged: (v) {
          setState(() {
            _style = v ? end : start;
          });
        }),
  );
}
