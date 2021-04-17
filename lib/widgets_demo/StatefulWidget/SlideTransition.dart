import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomSlideTransition extends StatefulWidget {
  @override
  _CustomSlideTransitionState createState() => _CustomSlideTransitionState();
}

class _CustomSlideTransitionState extends State<CustomSlideTransition>
    with SingleTickerProviderStateMixin {
  AnimationController _ctrl;

  @override
  void initState() {
    _ctrl = AnimationController(vsync: this, duration: Duration(milliseconds: 2500));
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
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.grey.withAlpha(33),
          height: 150,
          child: SlideTransition(
            textDirection: TextDirection.ltr,
            position: Tween<Offset>(
              begin: Offset.zero,
              end: Offset(1.2, 0.2),
            ).chain(CurveTween(curve: Curves.elasticIn)).animate(_ctrl),
            child: Container(
                child: Icon(Icons.android, color: Colors.green, size: 60)),
          ),
        )
      ),
    );
  }
}

