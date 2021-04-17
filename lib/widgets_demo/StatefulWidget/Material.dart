import 'package:flutter/material.dart';

class CustomMaterial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
        spacing: 10,
        runSpacing: 10,
        children: MaterialType.values.map((e) => _buildMaterial(e)).toList());
  }

  Material _buildMaterial(MaterialType type) => Material(
        shadowColor: Colors.blue,
        type: type,
        color: Colors.orange,
        elevation: 3,
        child: Container(
          alignment: Alignment.center,
          width: 100,
          height: 60,
          child: Text(
            type.toString().split('.')[1],
            style: TextStyle(color: Colors.black),
          ),
        ),
      );
}
