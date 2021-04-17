import 'package:flutter/material.dart';

class CustomExpandIcon extends StatefulWidget {
  @override
  _CustomExpandIconState createState() => _CustomExpandIconState();
}

class _CustomExpandIconState extends State<CustomExpandIcon> {
  var _closed = true;

  @override
  Widget build(BuildContext context) {
    return ExpandIcon(
      isExpanded: _closed,
      padding: EdgeInsets.all(5),
      size: 30,
      color: Colors.blue,
      expandedColor: Colors.orangeAccent,
      onPressed: (value) => setState(() => _closed = !_closed),
    );
  }
}
