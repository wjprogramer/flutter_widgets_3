import 'package:flutter/material.dart';

class CustomRelativePositionedTransition extends StatefulWidget {
  @override
  _CustomRelativePositionedTransitionState createState() =>
      _CustomRelativePositionedTransitionState();
}

class _CustomRelativePositionedTransitionState
    extends State<CustomRelativePositionedTransition>
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
        child: Container(
          color: Colors.grey.withAlpha(33),
          width: 200,
          height: 100,
          child: Stack(
            children: <Widget>[
              RelativePositionedTransition(
                size: Size(200, 100),
                rect: RectTween(
                  begin: Rect.fromLTRB(0, 0, 50, 50),
                  end: Rect.fromLTRB(0, 0, 50, 50).translate(100, 50),
                ).animate(_ctrl),
                child: Icon(
                  Icons.android,
                  color: Colors.green,
                  size: 50,
                ),
              )
            ],
          ),
        ));
  }
}
