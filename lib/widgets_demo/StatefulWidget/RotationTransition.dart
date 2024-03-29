import 'package:flutter/material.dart';

class CustomRotationTransition extends StatefulWidget {
  @override
  _CustomRotationTransitionState createState() => _CustomRotationTransitionState();
}

class _CustomRotationTransitionState extends State<CustomRotationTransition> with SingleTickerProviderStateMixin{

  AnimationController _ctrl;

  @override
  void initState() {
     _ctrl= AnimationController(vsync: this,duration: Duration(seconds: 2));
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
        color: Colors.grey.withAlpha(22),
        width: 100,
        height: 100,
        child: RotationTransition(
          turns: CurvedAnimation(parent: _ctrl, curve: Curves.elasticOut),
          child: Icon(Icons.android,color: Colors.green,size: 60),
        ),
      ),
    );
  }
}
