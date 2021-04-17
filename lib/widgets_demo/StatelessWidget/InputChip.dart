import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';

class PressInputChip extends StatefulWidget {
  @override
  _PressInputChipState createState() => _PressInputChipState();
}

class _PressInputChipState extends State<PressInputChip> {
  bool _delete = false;

  @override
  Widget build(BuildContext context) {
    return InputChip(
        padding: EdgeInsets.all(5),
        labelPadding: EdgeInsets.all(3),
        label: Text(
            !_delete ?
            "This is a InputChip." :
            "You are clicked delete icon."),
        backgroundColor: Colors.grey.withAlpha(66),
        avatar: Image.asset(AssetPath.HEAD_ICON),
        selectedColor: Colors.orangeAccent.withAlpha(88),
        selectedShadowColor: Colors.blue,
        shadowColor: Colors.orangeAccent,
        elevation: 3,
        onPressed: () =>  {  },
        onDeleted: () => setState(() => _delete = !_delete));
  }
}