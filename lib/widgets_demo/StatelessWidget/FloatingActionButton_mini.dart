import 'package:flutter/material.dart';

class MiniFAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = {
      Colors.red: Icons.add,
      Colors.blue: Icons.bluetooth,
      Colors.green: Icons.android,
    };
    return Wrap(
        spacing: 20,
        children: data.keys
            .map((e) => FloatingActionButton(
          heroTag:  e.toString()+"b",
          onPressed: () {},
          backgroundColor: e,
          mini: true,
          foregroundColor: Colors.white,
          child: Icon(data[e]),
          tooltip: "android",
          elevation: 5, //z-阴影盖度
        ))
            .toList());
  }
}