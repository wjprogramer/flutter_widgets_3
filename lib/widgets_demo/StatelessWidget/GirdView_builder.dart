import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';

class BuilderGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: 200,
      child: GridView.builder(
          itemCount: sColorData3.length,
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(//网格代理：定交叉轴数目
              crossAxisCount: 4,//条目个数
              mainAxisSpacing: 5,//主轴间距
              crossAxisSpacing: 5,//交叉轴间距
              childAspectRatio:1/0.618),
          itemBuilder: (_, int position)=> _buildItem(sColorData3[position])
      ),
    );
  }

  Container _buildItem(Color color) => Container(
    alignment: Alignment.center,
    width: 100,
    height: 30,
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
  );


}