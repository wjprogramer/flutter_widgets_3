import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class AlignDemo2 extends StatefulWidget {
  AlignDemo2({
    Key key,
  }) : super(key: key);

  @override
  _AlignDemo2State createState() => _AlignDemo2State();
}

const _BALL_SIZE = 30.0;

class _AlignDemo2State extends State<AlignDemo2> {
  var _x = 0.0;

  @override
  Widget build(BuildContext context) {
    var item = Align(
      child: _ball,
      alignment: Alignment(_x, f(_x * pi)),
    );

    var slider = Slider(
        max: 180,
        min: -180,
        divisions: 360,
        label: "${_x.toStringAsFixed(2)}π",
        value: _x * 180,
        onChanged: (v) => setState(() => _x = v / 180));

    return widgetContainer(
      height: null,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _container(
            child: item,
          ),
          slider,
        ],
      ),
    );
  }

  double f(x) {
    double y = sin(x);
    return y;
  }

  final Widget _ball = Container(
    width: _BALL_SIZE,
    height: _BALL_SIZE,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.yellow[300],
    ),
  );

  Widget _container({ Widget child }) {
    return Container(
      width: 300,
      height: 120,
      color: Color(0xFF1E1F8A),
      child: CustomPaint(
        painter: _BackgroundPainter(),
        child: child,
      ),
    );
  }
}

class _BackgroundPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;

    final halfWidth = width / 2;
    final halfHeight = height / 2;
    final center = Offset(width / 2, height / 2);

    final axisPaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 1.2;
    final paint = Paint()
      ..color = Colors.white.withOpacity(0.2);

    // Horizontal Line
    // X-axis
    canvas.drawLine(
        Offset(0, height / 2),
        Offset(width, height / 2),
        axisPaint
    );

    // Vertical Line
    // Y-axis
    canvas.drawLine(
        Offset(width / 2, 0),
        Offset(width / 2, height),
        axisPaint
    );

    final xPosInPercentage = <double>[
      -1, -0.75, -0.5, -0.25, 0.25, 0.5, 0.75, 1
    ];
    for (var pos in xPosInPercentage) {
      canvas.drawLine(
          Offset(center.dx + halfWidth * pos, 0),
          Offset(center.dx + halfWidth * pos, height),
          paint
      );
    }

    for (var x = -180; x <= 179; x++) {
      final percent = x == 0 ? 0 : x / 180;
      final y = sin(percent * pi) * halfHeight;

      final percent2 = (x + 1) == 0 ? 0 : (x + 1) / 360;
      final y2 = sin(percent2 * pi) * halfHeight;

      canvas.drawLine(
          Offset(center.dx + halfWidth * percent, y + halfHeight),
          Offset(center.dx + halfWidth * percent2, y2 + halfHeight),
          paint
      );
    }

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return this != oldDelegate;
  }

}
