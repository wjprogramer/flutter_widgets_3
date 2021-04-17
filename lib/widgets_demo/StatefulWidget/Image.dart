import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';

class LoadImage extends StatelessWidget {
  final assetsImagePath = AssetPath.HEAD_ICON;
  final assetsGif = AssetPath.COVERS[2];
  final netImageUrl = "https://i.ytimg.com/vi/XJFOSsv9EsM/maxresdefault.jpg";

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: <Widget>[
        _loadFromAssets(),
        _loadFromNet(),
      ],
    );
  }

  Widget _loadFromAssets() => Wrap(
        spacing: 10,
        children: <Widget>[
          Image.asset(assetsImagePath, height: 80, width: 80),
          Image.asset(assetsGif, height: 80, width: 80),
        ],
      );

  Widget _loadFromNet() => Image.network(netImageUrl, height: 80);
}
