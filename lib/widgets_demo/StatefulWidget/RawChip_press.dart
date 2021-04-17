import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';

class PressRawChip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RawChip(
        padding: EdgeInsets.all(5),
        labelPadding: EdgeInsets.all(3),
        label: Text('Hello World'),
        avatar: Image.asset(AssetPath.HEAD_ICON),
        elevation: 3,
        pressElevation: 5,
        shadowColor: Colors.orangeAccent,
        onPressed: () =>  {  },
      ),
    );
  }
}
