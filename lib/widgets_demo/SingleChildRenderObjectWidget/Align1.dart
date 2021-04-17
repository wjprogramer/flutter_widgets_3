import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class AlignDemo1 extends StatelessWidget {
  final alignments = [
    Alignment.topLeft,
    Alignment.topCenter,
    Alignment.topRight,
    Alignment.centerLeft,
    Alignment.center,
    Alignment.centerRight,
    Alignment.bottomLeft,
    Alignment.bottomCenter,
    Alignment.bottomRight,
  ];

  final alignmentsInfo = [
    "Top\nLeft",
    "Top\nCenter",
    "Top\nRight",
    "Center\nLeft",
    "Center",
    "Center\nRight",
    "Bottom\nLeft",
    "Bottom\nCenter",
    "Bottom\nRight",
  ];

  @override
  Widget build(BuildContext context) {
    var h = 200.0;

    return widgetContainer(
      height: h,
      child: Container(
        width: double.infinity,
        height: h,
        child: Stack(
          children: alignments
              .map((e) => Align(
                alignment: e,
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.blue[300],
                  child: Center(
                    child: Text(
                      alignmentsInfo[alignments.indexOf(e)],
                      style: TextStyle(
                        color: Colors.white
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ))
              .toList()
        ),
      ),
    );
  }
}