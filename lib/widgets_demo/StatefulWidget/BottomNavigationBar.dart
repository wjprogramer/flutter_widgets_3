import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  var _position = 0;
  BottomNavigationBarType _type = BottomNavigationBarType.shifting;
  final iconsMap = {
    "Home": Icons.home,
    "Photos": Icons.toys,
    "Like": Icons.favorite,
    "Guide": Icons.class_,
    "User": Icons.account_circle,
  };
  final _colors = [
    Colors.red,
    Colors.yellow,
    Colors.blue,
    Colors.green,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          _buildOp(),
          _buildBottomNavigationBar(),
        ],
      ),
    );
  }

  bool get isShifting => _type == BottomNavigationBarType.shifting;

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: (position) => setState(() => _position = position),
      currentIndex: _position,
      elevation: 1,
      type: _type,
      fixedColor: isShifting ? Colors.white : _colors[_position],
      backgroundColor: Colors.white,
      iconSize: 25,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      showUnselectedLabels: false,
      showSelectedLabels: true,
      items: iconsMap.keys
          .map((key) => BottomNavigationBarItem(
              title: Text(
                key,
              ),
              icon: Icon(iconsMap[key]),
              backgroundColor: _colors[_position]))
          .toList(),
    );
  }

  Widget _buildOp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          _type.toString(),
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        Switch(
            value: _type == BottomNavigationBarType.shifting,
            onChanged: (b) {
              setState(() => _type = b
                  ? BottomNavigationBarType.shifting
                  : BottomNavigationBarType.fixed);
            }),
      ],
    );
  }
}
