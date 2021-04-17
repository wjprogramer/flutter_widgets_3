import 'package:flutter/material.dart';

class ColorInkResponse extends StatefulWidget {
  @override
  _ColorInkResponseState createState() => _ColorInkResponseState();
}

class _ColorInkResponseState extends State<ColorInkResponse> {
  var _info = 'Push';

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () => {},
      splashColor: Colors.blueAccent,
      highlightColor: Colors.orange,
      onHighlightChanged: (v) =>
          setState(() => _info = 'onHighlightChanged:$v'),
      radius: 50,
      child: Container(
        alignment: Alignment.center,
        width: 200,
        height: 100,
        child: Text(_info),
      ),
    );
  }
}
