import 'package:flutter/material.dart';
import '../StatelessWidget/RadioListTile.dart';

class CustomExpansionTile extends StatefulWidget {
  @override
  _CustomExpansionTileState createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Icon(Icons.star),
      title: Text("选择语言"),
      backgroundColor: Colors.grey.withAlpha(6),
      onExpansionChanged: (value) {
        print('$value');
      },
      initiallyExpanded: false,
      children: <Widget>[CustomRadioListTile()],
    );
  }
}
