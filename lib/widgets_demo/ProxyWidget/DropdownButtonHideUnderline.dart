import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomDropDownButtonHideUnderline extends StatefulWidget {
  @override
  _CustomDropDownButtonHideUnderlineState createState() =>
      _CustomDropDownButtonHideUnderlineState();
}

class _CustomDropDownButtonHideUnderlineState
    extends State<CustomDropDownButtonHideUnderline> {
  Color _color = Colors.red;

  final _colors = [Colors.red, Colors.yellow, Colors.blue, Colors.green];
  final _info = ["Fire", "Sun", "Sky", "Forest"];

  @override
  Widget build(BuildContext context) {
    return _container(
      child: DropdownButtonHideUnderline(
        child: DropdownButton<Color>(
          value: _color,
          elevation: 1,
          icon: Icon(
            Icons.expand_more,
            size: 20,
            color: _color,
          ),
          items: _buildItems(),
          onChanged: (v) {
            setState(() => _color = v);
          }),
      ),
    );
  }

  List<DropdownMenuItem<Color>> _buildItems() => _colors
      .map((e) => DropdownMenuItem<Color>(
          value: e,
          child: Text(
            _info[_colors.indexOf(e)],
            style: TextStyle(color: e),
          )
      ))
      .toList();

  Widget _container({ Widget child }) {
    return widgetContainer(
      height: null,
      backgroundColor: Colors.black87,
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: 50,
            height: 50,
            color: _color,
          ),
          Theme(
            data: ThemeData(
              canvasColor: Colors.black87,
            ),
            child: child,
          ),
        ],
      ),
    );
  }
}
