import 'package:flutter/material.dart';

class ColorInkWell extends StatefulWidget {
  @override
  _ColorInkWellState createState() => _ColorInkWellState();
}

class _ColorInkWellState extends State<ColorInkWell> {
  var _info = 'Push';

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      splashColor: Colors.blueAccent,
      highlightColor: Colors.orange,
      onHighlightChanged: (v) =>
          setState(() => _info = 'onHighlightChanged:$v'),
      radius: 50,
      child: Container(
        alignment: Alignment.center,
        width: 180,
        height: 50,
        child: Text(_info),
      ),
    );
  }
}
