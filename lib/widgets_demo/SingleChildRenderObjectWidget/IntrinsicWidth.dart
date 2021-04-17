import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class IntrinsicWidthDemo extends StatefulWidget {
  @override
  _IntrinsicWidthDemoState createState() => _IntrinsicWidthDemoState();
}

class _IntrinsicWidthDemoState extends State<IntrinsicWidthDemo> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final width = size.width;
    final oneThirdWidth = width / 3;

    final box1 = _getBox(
      color: Colors.green[100],
      width: oneThirdWidth * 0.3,
    );

    final box2 = _getBox(
      color: Colors.green[200],
      width: oneThirdWidth * 0.5,
    );

    final box3 = _getBox(
      color: Colors.green[300],
      width: oneThirdWidth * 0.7,
    );

    return widgetContainer(
      backgroundColor: Colors.black87,
      child: Center(
        child: Container(
          width: oneThirdWidth * 2,
          color: Colors.orange[100],
          child: IntrinsicWidth(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(child: box1),
                Expanded(child: box2),
                Expanded(child: box3),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _getBox({
    Color color,
    double width,
    double height = 25.0,
  }) {
    return Container(
      color: color,
      width: width,
      height: height,
      child: Container(
        padding: const EdgeInsets.all(16),
        alignment: Alignment.centerLeft,
        child: Text('Original Width: ${width.toInt()}')
      ),
    );
  }

}
