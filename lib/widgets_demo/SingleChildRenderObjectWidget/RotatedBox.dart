import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomRotatedBox extends StatefulWidget {
  @override
  _CustomRotatedBoxState createState() => _CustomRotatedBoxState();
}

class _CustomRotatedBoxState extends State<CustomRotatedBox> {
  int _quarterTurns = 0;

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: GestureDetector(
        onTap: () => setState(() => _quarterTurns++),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blue.withOpacity(0),
          child: Stack(
            children: [
              Center(
                child: Text(
                  'Click',
                  style: TextStyle(
                    fontSize: 150,
                    color: Colors.blue[100],
                  ),
                ),
              ),
              Center(
                child: RotatedBox(
                  quarterTurns: _quarterTurns,
                  child: _icon(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _icon() {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
          colors: [
            Colors.green[500],
            Colors.green[500],
          ]
      ).createShader(bounds),
      child: Image.asset(
        AssetPath.ICON,
        height: 100,
      ),
      blendMode: BlendMode.srcATop,
    );
  }
}
