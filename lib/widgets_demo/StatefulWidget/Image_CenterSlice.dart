
import 'package:flutter/material.dart';

class CenterSliceImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 80,
      child: Image.asset(
        "assets/images/right_chat.png",
        centerSlice: Rect.fromLTRB(9, 27, 60, 27 + 1.0),
        fit: BoxFit.fill,
      ),
    );
  }
}
