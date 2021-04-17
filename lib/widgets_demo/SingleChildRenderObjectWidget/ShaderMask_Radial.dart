import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class RadialShaderMask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: Row(
        children: <Widget>[
          ShaderMask(
            shaderCallback: _buildShader,
            child: Image.asset(
              AssetPath.COVERS[0],
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: ShaderMask(
              shaderCallback: _buildShader,
              child: Text(
                'Hello World',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
          ),
          ShaderMask(
            shaderCallback: _buildShader,
            child: Container(
              height: 100,
              color: Colors.white,
              width: 50,
            ),
          ),
        ],
      ),
    );
  }

  final colors = [
    Colors.blue[200],
    Colors.green[200],
  ];

  Shader _buildShader(Rect bounds) => RadialGradient(
          center: Alignment.topLeft,
          radius: 1.0,
          tileMode: TileMode.mirror,
          colors: colors)
      .createShader(bounds);
}