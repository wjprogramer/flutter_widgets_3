import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: Card(
        color: Color(0xffB3FE65),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Container(
          alignment: Alignment.topLeft,
          width: 200,
          height: 0.618*200,
          margin: EdgeInsets.all(10),
          child: Text("Card", style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}