import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class AlignTransitionDemo extends StatefulWidget {
  @override
  _AlignTransitionDemoState createState() => _AlignTransitionDemoState();
}

class _AlignTransitionDemoState extends State<AlignTransitionDemo> with SingleTickerProviderStateMixin {
  AnimationController _ctrl;

  @override
  void initState() {
    _ctrl = AnimationController(vsync: this, duration: Duration(seconds: 1));
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
        child: Stack(
          children: <Widget>[
            AlignTransition(
              alignment: AlignmentTween(
                  begin: Alignment.topLeft, end: Alignment.bottomRight)
                  .animate(_ctrl),
              child: Container(
                child: Image.asset(AssetPath.ICON, width: 100,),
              ),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                color: Colors.blue,
                child: Text('Click Container!', style: TextStyle(color: Colors.white,),),
              )
            ),
          ],
        ),
      ),
    );
  }
}


