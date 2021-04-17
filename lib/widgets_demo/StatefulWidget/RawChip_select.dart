import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';

class SelectRawChip extends StatefulWidget {
  @override
  _SelectRawChipState createState() => _SelectRawChipState();
}

class _SelectRawChipState extends State<SelectRawChip> {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RawChip(
        selected: _selected,
        padding: EdgeInsets.all(5),
        labelPadding: EdgeInsets.all(3),
        deleteIconColor: Colors.red,
        selectedColor: Colors.orangeAccent.withAlpha(44),
        label: Text('Hello World'),
        avatar: Image.asset(AssetPath.HEAD_ICON),
        elevation: 3,
        pressElevation: 5,
        shadowColor: Colors.orangeAccent,
        onSelected: (v)=> setState(() => _selected=v),
        onDeleted: () =>  {  },
      ),
    );
  }
}