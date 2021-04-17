import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class DecoratedBoxTransitionDemo extends StatefulWidget {
  @override
  _DecoratedBoxTransitionDemoState createState() =>
      _DecoratedBoxTransitionDemoState();
}

class _DecoratedBoxTransitionDemoState
    extends State<DecoratedBoxTransitionDemo>
    with SingleTickerProviderStateMixin {

  final DecorationTween decorationTween = DecorationTween(
    begin: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20.0),
      shape: BoxShape.rectangle,
      boxShadow: const <BoxShadow>[
        BoxShadow(
          offset: Offset(0, 10),
          color: Color(0x66000000),
          blurRadius: 10.0,
          spreadRadius: 4.0,
        ),
      ],
    ),
    end: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.zero,
      shape: BoxShape.rectangle,
      boxShadow: const <BoxShadow>[
        BoxShadow(
          offset: Offset(0, 10),
          color: Color(0x00000000),
          blurRadius: 10.0,
          spreadRadius: 4.0,
        ),
      ],
    ),
  );

  AnimationController _controller;
  Animation<Decoration> _decorationAnimation;

  bool _first = false;

  initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _decorationAnimation = decorationTween
        .chain(CurveTween(curve: Curves.decelerate))
        .animate(_controller);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      bottomPanel: Align(
        alignment: Alignment.centerRight,
        child: Switch(
          value: _first,
          onChanged: (v) {
            if (v) {
              _controller.forward();
            } else {
              _controller.reverse();
            }

            setState(() {
              _first = v;
            });
          },
        ),
      ),
      child: Center(
        child: DecoratedBoxTransition(
          position: DecorationPosition.background,
          decoration: _decorationAnimation,
          child: Container(
            padding: EdgeInsets.all(10),
            child: FlutterLogo(
              size: 80,
            ),
          ),
        ),
      ),
    );
  }
}