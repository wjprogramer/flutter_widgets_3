import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomPaintDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: CustomPaint(
        painter: _MyPainter(),
        child: Container(
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}

class _MyPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {

    final width = size.width;
    final height = size.height;

    // Green Triangle
    final path = Path()
      ..moveTo(width * 0.25, height * 0.25)
      ..lineTo(width * 0.75, height * 0.25)
      ..lineTo(width * 0.75, height * 0.75);
    final paint = Paint()
      ..color = Colors.green[300];
    canvas.drawPath(path, paint);

    // Yellow Triangle
    final path2 = Path()
      ..moveTo(width * 0.25, height * 0.25)
      ..lineTo(width * 0.25, height * 0.75)
      ..lineTo(width * 0.75, height * 0.75);
    final paint2 = Paint()
      ..color = Colors.yellow[300];
    canvas.drawPath(path2, paint2);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate)=> false;
}
