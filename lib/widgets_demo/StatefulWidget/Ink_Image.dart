import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';

class InkImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[800],
      child: Center(
        child: Ink.image(
          image: AssetImage(AssetPath.COVERS[0]),
          fit: BoxFit.cover,
          width: 300.0,
          height: 200.0,
          child: InkWell(
              onTap: () {},
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Chaos',
                      style: TextStyle(
                          fontWeight: FontWeight.w900, color: Colors.black)),
                ),
              )),
        ),
      ),
    );
  }
}
