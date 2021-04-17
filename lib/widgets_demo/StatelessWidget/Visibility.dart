import 'package:flutter/material.dart';

class CustomVisibility extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: <Widget>[
        _buildVisibility(true),
        _buildVisibility(false),
      ],
    );
  }

  _buildVisibility(bool visible) {
    var box = Container(
      height: 30,
      width: 30,
      color: Colors.blue,
    );
    return Container(
      width: 150,
      height: 150 * 0.618,
      color: Colors.cyanAccent.withAlpha(33),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          box,
          Visibility(
              visible: visible,
              child: Container(
                alignment: Alignment.center,
                height: 80 * 0.618,
                width: 80,
                color: Colors.red,
                child: Text(
                  "visible\ntrue",
                  style: TextStyle(fontSize: 20),
                ),
              )),
          box,
        ],
      ),
    );
  }
}
