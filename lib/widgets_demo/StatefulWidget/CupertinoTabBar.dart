import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomCupertinoTabBar extends StatefulWidget {
  @override
  _CustomCupertinoTabBarState createState() => _CustomCupertinoTabBarState();
}

class _CustomCupertinoTabBarState extends State<CustomCupertinoTabBar> {
  var _position = 0;
  final bottomIconsOf = {
    "Home": Icons.home,
    "Photos": Icons.toys,
    "Like": Icons.favorite,
    "Guide": Icons.class_,
    "User": Icons.account_circle,
  };

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: Column(
        children: <Widget>[
          _buildContent(context),
          _buildTabBar(),
        ],
      ),
    );
  }

  Widget _buildTabBar() {
    return CupertinoTabBar(
      currentIndex: _position,
      onTap: (value) => setState(() => _position = value),
      items: bottomIconsOf.keys
        .map((e) => BottomNavigationBarItem(
              icon: Icon(
                bottomIconsOf[e],
              ),
              label: e,
            ))
        .toList(),
      activeColor: Colors.blue,
      inactiveColor: Color(0xff333333),
      backgroundColor: Color(0xfff1f1f1),
      iconSize: 25.0,
    );
  }

  Widget _buildContent(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: 150,
      color: Color(0xffE7F3FC),
      child: Text(
        bottomIconsOf.keys.toList()[_position],
        style: TextStyle(color: Colors.blue, fontSize: 24),
      ),
    );
  }
}
