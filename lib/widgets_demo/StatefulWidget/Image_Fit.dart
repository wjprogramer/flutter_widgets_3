import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';

class FitImage extends StatefulWidget {
  @override
  _FitImageState createState() => _FitImageState();
}

class _FitImageState extends State<FitImage> {
  bool _smallImage = false;

  @override
  Widget build(BuildContext context) {
    var imageLi = BoxFit.values
        .toList()
        .map((mode) => Column(children: <Widget>[
      Container(
          margin: EdgeInsets.all(5),
          width: 100,
          height: 80,
          color: Colors.grey.withAlpha(88),
          child: Image(
              image: AssetImage(!_smallImage
                  ? AssetPath.COVERS[1]
                  : AssetPath.COVERS[1]),
              fit: mode)),
      Text(mode.toString().split(".")[1])
    ]))
        .toList();

    return Wrap(
      children: [...imageLi, _buildSwitch()],
    );
  }

  Widget _buildSwitch() {
    return Container(
      alignment: Alignment.center,
      width: 200,
      height: 100,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: <Widget>[
          Text("使用小图"),
          Switch(
              value: _smallImage,
              onChanged: (b) => setState(() => _smallImage = b)),
        ],
      ),
    );
  }
}
