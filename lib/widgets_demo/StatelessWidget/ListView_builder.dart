import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';

class BuilderListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: 200,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10),
        itemCount: sColorData.length,
        itemBuilder: (context, index) => _buildItem(sColorData[index]),
      ),
    );
  }

  Widget _buildItem(Color color) => Container(
    alignment: Alignment.center,
    width: 100,
    height: 50,
    color: color,
    child: Text(
      colorString(color),
      style: TextStyle(color: Colors.white, shadows: [
        Shadow(color: Colors.black, offset: Offset(.5, .5), blurRadius: 2)
      ]),
    ),
  );
}