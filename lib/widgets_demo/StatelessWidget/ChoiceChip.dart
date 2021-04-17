import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';

class CustomChoiceChip extends StatefulWidget {
  @override
  _CustomChoiceChipState createState() => _CustomChoiceChipState();
}

class _CustomChoiceChipState extends State<CustomChoiceChip> {
  bool _select = false;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      selected: _select,
      padding: EdgeInsets.all(5),
      labelPadding: EdgeInsets.all(5),
      label: Text(
        _select ?
        "You are selected it." :
        "This is a ChoiceChip.",
        style: TextStyle(fontSize: 16),
      ),
      backgroundColor: Colors.grey.withAlpha(66),
      avatar: Image.asset(AssetPath.HEAD_ICON),
      selectedColor: Colors.orangeAccent.withAlpha(44),
      selectedShadowColor: Colors.blue,
      shadowColor: Colors.orangeAccent,
      elevation: 3,
      onSelected: (value) => setState(() => _select = value),
    );
  }
}