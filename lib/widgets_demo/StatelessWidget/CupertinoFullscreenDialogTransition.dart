import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CupertinoFullscreenDialogTransitionDemo extends StatefulWidget {
  @override
  _CupertinoFullscreenDialogTransitionDemoState createState() => _CupertinoFullscreenDialogTransitionDemoState();
}

class _CupertinoFullscreenDialogTransitionDemoState extends State<CupertinoFullscreenDialogTransitionDemo> with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: ClipRect(
        child: Column(
          children: <Widget>[
            CupertinoFullscreenDialogTransition(
              primaryRouteAnimation: _animationController,
              secondaryRouteAnimation: _animationController,
              linearTransition: false,
              child: Center(
                child: Container(
                  color: Colors.blueGrey,
                  width: 300,
                  height: 300,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  onPressed: () => _animationController.forward(),
                  child: Text('Forward'),
                ),
                RaisedButton(
                  onPressed: () => _animationController.reverse(),
                  child: Text('Reverse'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
