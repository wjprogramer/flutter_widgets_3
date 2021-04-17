import 'package:flutter/material.dart';

class CustomInkWell extends StatefulWidget {
  @override
  _CustomInkWellState createState() => _CustomInkWellState();
}

class _CustomInkWellState extends State<CustomInkWell> {
  var _info = 'Push';

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() => _info = 'onTap'),
      onDoubleTap: () => setState(() => _info = 'onDoubleTap'),
      onLongPress: () => setState(() => _info = 'onLongPress'),
      onTapCancel: () => setState(() => _info = 'onTapCancel'),
      child: Container(
        alignment: Alignment.center,
        width: 120,
        height: 50,
        child: Text(_info),
      ),
    );
  }
}