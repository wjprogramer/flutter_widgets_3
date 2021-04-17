import 'package:flutter/material.dart';

class StyleDropDownButton extends StatefulWidget {
  @override
  _StyleDropDownButtonState createState() => _StyleDropDownButtonState();
}

class _StyleDropDownButtonState extends State<StyleDropDownButton> {
  Color _color = Colors.red ;
  final _colors = [Colors.red, Colors.yellow, Colors.blue, Colors.green];
  final _info = ["红色", "黄色", "蓝色", "绿色"];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          width: 50,
          height: 50,
          color: _color??Colors.transparent,
        ),
        DropdownButton<Color>(
            hint: Text('请选择'),
            isDense: true,
            iconSize:20,
            iconEnabledColor:_color??Colors.orange,
            value: _color,
            items: _buildItems(),
            onChanged: (v) => setState(() => _color = v)),
      ],
    );
  }

  List<DropdownMenuItem<Color>> _buildItems() => _colors
      .map((e) => DropdownMenuItem<Color>(
          value: e,
          child: Text(
            _info[_colors.indexOf(e)],
            style: TextStyle(color: e),
          )))
      .toList();
}
