import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomSizeTransition extends StatefulWidget {
  @override
  _CustomSizeTransitionState createState() => _CustomSizeTransitionState();
}

class _CustomSizeTransitionState extends State<CustomSizeTransition>
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
      child: widgetContainer(
        child: Container(
          color: Colors.blue[50],
          child: Row(
            children: [
              Expanded(
                child: Container(
                  child: Center(
                    child: SizeTransition(
                      axis: Axis.horizontal,
                      sizeFactor: CurvedAnimation(parent: _ctrl, curve: Curves.fastOutSlowIn),
                      child: Container(
                        width: double.infinity,
                        height: 150,
                        color: Colors.blue,
                        child: Icon(Icons.android, color: Colors.white, size: 80)),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Center(
                    child: SizeTransition(
                      axis: Axis.vertical,
                      sizeFactor: CurvedAnimation(parent: _ctrl, curve: Curves.fastOutSlowIn),
                      child: Container(
                        width: double.infinity,
                        height: 150,
                        color: Colors.blueAccent,
                        child: Icon(Icons.android, color: Colors.white, size: 80)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
