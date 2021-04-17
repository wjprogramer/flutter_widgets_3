import 'package:flutter/material.dart';

class CustomLinearProgressIndicator extends StatefulWidget {
  @override
  _CustomLinearProgressIndicatorState createState() =>
      _CustomLinearProgressIndicatorState();
}

class _CustomLinearProgressIndicatorState
    extends State<CustomLinearProgressIndicator> {
  var data = <double>[0.2, 0.4, 0.6, 0.8, null];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: data
          .map((e) => Container(
        width: 50,
        height: 3,
        child:LinearProgressIndicator(
          value: e,
          backgroundColor: Colors.grey.withAlpha(33),
          valueColor: AlwaysStoppedAnimation(Colors.orange),
        ),
      ))
          .toList(),
    );
  }
}
