import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';

class CustomListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: 200,
      child:  ListView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        children: sColorData
            .map((color) => Container(
          alignment: Alignment.center,
          width: 80,
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
    );
  }


}