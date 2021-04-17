import 'package:flutter/material.dart';

class CustomListener extends StatefulWidget {
  @override
  _CustomListenerState createState() => _CustomListenerState();
}

class _CustomListenerState extends State<CustomListener> {
  var _info = '';

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (detail) => setState(() => _info = detail.toString()),
      onPointerMove: (detail) => setState(() => _info = detail.toString()),
      onPointerUp: (detail) => setState(() => _info = detail.toString()),
      onPointerCancel: (detail) => setState(() => _info = detail.toString()),

      child: Container(
        alignment: Alignment.center,
        width: 300,
        height: 300 * 0.618,
        color: Colors.grey.withAlpha(33),
        child: Text(
          _info,
          style: TextStyle(fontSize: 16, color: Colors.blue),
        ),
      ),
    );
  }
}
