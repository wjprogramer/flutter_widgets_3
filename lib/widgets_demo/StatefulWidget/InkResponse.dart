import 'package:flutter/material.dart';

class CustomInkResponse extends StatefulWidget {
  @override
  _CustomInkResponseState createState() => _CustomInkResponseState();
}

class _CustomInkResponseState extends State<CustomInkResponse> {
  var _info = 'Push';

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () => setState(() => _info = 'onTap'),
      onDoubleTap: () => setState(() => _info = 'onDoubleTap'),
      onLongPress: () => setState(() => _info = 'onLongPress'),
      onTapCancel: () => setState(() => _info = 'onTapCancel'),
      child: Container(
        alignment: Alignment.center,
        width: 200,
        height: 100,
        child: Text(_info),
      ),
    );
  }
}