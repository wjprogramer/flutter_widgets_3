import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class FadeTransitionDemo extends StatefulWidget {
  @override
  _FadeTransitionDemoState createState() => _FadeTransitionDemoState();
}

class _FadeTransitionDemoState extends State<FadeTransitionDemo>
    with SingleTickerProviderStateMixin {
  AnimationController _ctrl;

  @override
  void initState() {
    _ctrl = AnimationController(vsync: this, duration: Duration(seconds: 2));
    _ctrl.forward();
    super.initState();
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _ctrl.reset();
          _ctrl.forward();
        });
      },
      child: widgetContainer(
        backgroundColor: Colors.grey.withAlpha(22),
        padding: EdgeInsets.all(16),
        height: 100,
        child: Center(
          child: FadeTransition(
            opacity: CurvedAnimation(parent: _ctrl, curve: Curves.linear),
            // child: Icon(Icons.android, color: Colors.green, size: 60),
            child: _icon(),
          ),
        ),
      ),
    );
  }

  Widget _icon() {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
          colors: [
            Colors.blue[100],
            Colors.blue[100],
          ]
      ).createShader(bounds),
      child: Image.asset(
        AssetPath.ICON,
      ),
      blendMode: BlendMode.srcATop,
    );
  }
}
