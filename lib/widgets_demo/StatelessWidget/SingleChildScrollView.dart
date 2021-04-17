import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';

class CustomSingleChildScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: 200,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: sColorData
              .map((color) => Container(
            alignment: Alignment.center,
            height: 50,
            color: color,
            child: Text(
              colorString(color),
              style: TextStyle(color: Colors.white, shadows: [
                Shadow(
                    color: Colors.black,
                    offset: Offset(.5, .5),
                    blurRadius: 2)
              ]),
            ),
          ))
              .toList(),
        ),

      ),
    );
  }

}