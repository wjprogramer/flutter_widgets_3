import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class PaddingDemo extends StatelessWidget {

  final paddings = [
    EdgeInsets.all(20),
    EdgeInsets.only(top: 20, left: 20),
    EdgeInsets.symmetric(vertical: 20, horizontal: 20),
  ];

  final aps = [
    AssetPath.COVERS[0],
    AssetPath.COVERS[1],
    AssetPath.COVERS[2],
  ];

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: Row(
        children: List.generate(paddings.length, (index) => Expanded(
          flex: 1,
          child: Container(
            color: index.isEven ? Colors.green[100] : Colors.white,
            height: 150,
            child: Padding(
              padding: paddings[index],
              child: _buildChild(index),
            ),
          ),
        )),
      ),
    );
  }

  Widget _buildChild(index) {
    return Container(
      color: Colors.cyanAccent,
      width: 100,
      height: 100,
      child: Image.asset(aps[index], fit: BoxFit.cover,),
    );
  }
}