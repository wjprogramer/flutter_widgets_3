import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';

class CustomCupertinoScrollbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: 200,
      child: CupertinoScrollbar(
        child: ListView(
          children: _buildChildren(),
        ),
      ),
    );
  }

  final _colorIndices = List.generate(9, (index) => 100 * (index + 1));

  List<Widget> _buildChildren() {
    return _colorIndices
        .map((color) => Container(
          alignment: Alignment.center,
          width: 100,
          height: 50,
          color: Colors.blue[color],
          child: Text(
            colorString(Colors.blue[color]),
            style: TextStyle(
              color: Colors.blue[1000 - color],
              shadows: [
                Shadow(
                    color: Colors.white,
                    offset: Offset(.1, .1),
                    blurRadius: 10
                ),
              ],
            ),
          ),
        ))
        .toList();
  }


}