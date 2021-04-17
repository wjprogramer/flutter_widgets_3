import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomCupertinoTabScaffold extends StatefulWidget {
  @override
  _CustomCupertinoTabScaffoldState createState() =>
      _CustomCupertinoTabScaffoldState();
}

class _CustomCupertinoTabScaffoldState
    extends State<CustomCupertinoTabScaffold> {
  var _position = 0;
  final iconsMap = {
    "Home": Icons.home,
    "Photos": Icons.toys,
    "Like": Icons.favorite,
    "Guide": Icons.class_,
    "User": Icons.account_circle,
  };

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: 250,
      child: CupertinoTabScaffold(
        backgroundColor: Colors.grey.withAlpha(11),
        tabBar: _buildTabBar(),
        tabBuilder: (_, index) => _buildContent(index)
      ),
    );
  }

  CupertinoTabBar _buildTabBar() => CupertinoTabBar(
        currentIndex: _position,
        onTap: (value) => setState(() => _position = value),
        items: iconsMap.keys
            .map((e) => BottomNavigationBarItem(
                  icon: Icon(
                    iconsMap[e],
                  ),
                  title: Text(e),
                ))
            .toList(),
        activeColor: Colors.blue,
        inactiveColor: Color(0xff333333),
        backgroundColor: Color(0xfff1f1f1),
        iconSize: 25.0,
      );

  _buildContent(int index) => Container(
      alignment: Alignment.center,
      child: Text(iconsMap.keys.toList()[index]),
    );
}
