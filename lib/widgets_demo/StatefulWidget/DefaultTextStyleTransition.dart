import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDefaultTextStyleTransition extends StatefulWidget {
  @override
  _CustomDefaultTextStyleTransitionState createState() =>
      _CustomDefaultTextStyleTransitionState();
}

class _CustomDefaultTextStyleTransitionState
    extends State<CustomDefaultTextStyleTransition>
    with SingleTickerProviderStateMixin {
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
        child: Container(
          alignment: Alignment.center,
          width: 300,
          height: 100,
          child: DefaultTextStyleTransition(
            textAlign: TextAlign.start,
            softWrap: true,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyleTween(
                begin: TextStyle(color: Colors.blue, fontSize: 50, shadows: [
                  Shadow(
                      offset: Offset(1, 1), color: Colors.black, blurRadius: 3)
                ]),
                end: TextStyle(color: Colors.white, fontSize: 20, shadows: [
                  Shadow(
                      offset: Offset(1, 1), color: Colors.purple, blurRadius: 3)
                ])).animate(_ctrl),
            child: Text('Hello World'),
          ),
        ));
  }
}
