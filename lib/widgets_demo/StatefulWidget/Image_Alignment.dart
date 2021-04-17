import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';

class AlignmentImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var alignment = [
      Alignment.center,
      Alignment.centerLeft,
      Alignment.centerRight,
      Alignment.topCenter,
      Alignment.topLeft,
      Alignment.topRight,
      Alignment.bottomCenter,
      Alignment.bottomLeft,
      Alignment.bottomRight
    ]; //测试数组
    var imgLi = alignment
        .map((alignment) => //生成子Widget列表
    Column(children: <Widget>[
      Container(
          margin: EdgeInsets.all(5),
          width: 90,
          height: 60,
          color: Colors.grey.withAlpha(88),
          child: Image(
            image: AssetImage(AssetPath.COVERS[1]),
            alignment: alignment,
            width: 32,
          )),
      Text(alignment.toString())
    ]))
        .toList();
    var imageAlignment = Wrap(children: imgLi);
    return imageAlignment;
  }
}