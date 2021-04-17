import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomAspectRatio extends StatefulWidget {
  @override
  _CustomAspectRatioState createState() => _CustomAspectRatioState();
}

class _CustomAspectRatioState extends State<CustomAspectRatio> {
  var _ratio = 0.75;

  @override
  Widget build(BuildContext context) {
    var child = Container(
      alignment: Alignment.center,
      color: Colors.orange[200],
      width: 50,
      height: 50,
      child: Text("Static"),
    );

    var box = AspectRatio(
      aspectRatio: _ratio,
      child: Container(
        color: Colors.green[200],
        child: Icon(
          Icons.android,
          color: Colors.white,
        )
      ),
    );

    return widgetContainer(
      height: null,
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.grey.withAlpha(22),
            width: 300,
            height: 100,
            child: Row(
              children: <Widget>[child, box, child],
            ),
          ),
          _buildSlider(),
        ],
      ),
    );
  }

  Widget _buildSlider() => Slider(
      divisions: 18,
      min: 0.3,
      max: 2.0,
      label: _ratio.toStringAsFixed(2),
      value: _ratio,
      onChanged: (v) => setState(() => _ratio = v));
}
