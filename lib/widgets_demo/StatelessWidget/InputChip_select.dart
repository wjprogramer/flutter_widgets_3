import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';

class SelectInputChip extends StatefulWidget {
  @override
  _SelectInputChipState createState() => _SelectInputChipState();
}

class _SelectInputChipState extends State<SelectInputChip> {
  bool _select = false;

  @override
  Widget build(BuildContext context) {
    return InputChip(
      selected: _select,
      padding: EdgeInsets.all(5),
      labelPadding: EdgeInsets.all(3),
      label: Text("This is a InputChip."),
      backgroundColor: Colors.grey.withAlpha(66),
      avatar: Image.asset(AssetPath.HEAD_ICON),
      selectedColor: Colors.orangeAccent.withAlpha(88),
      selectedShadowColor: Colors.blue,
      shadowColor: Colors.orangeAccent,
      elevation: 3,
      onDeleted: () =>  {  },
      onSelected: (bool value) {
        setState(() {
          _select = value;
        });
        print("onSelected");
      },
    );
  }
}