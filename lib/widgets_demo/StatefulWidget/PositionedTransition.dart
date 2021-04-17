import 'package:flutter/material.dart';

class CustomPositionedTransition extends StatefulWidget {
  @override
  _CustomPositionedTransitionState createState() =>
      _CustomPositionedTransitionState();
}

class _CustomPositionedTransitionState extends State<CustomPositionedTransition>
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
              PositionedTransition(
                rect: RelativeRectTween(
                  begin: RelativeRect.fromLTRB(0, 50, 150, 100),
                  end: RelativeRect.fromLTRB(60, 0, 150, -50),
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
