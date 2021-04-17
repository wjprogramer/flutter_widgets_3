import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

//      "subtitle":
//          "在onTap时进行使用控制器进行切頁",
//    }
class BottomNavigationBarWithPageView extends StatefulWidget {
  @override
  _BottomNavigationBarWithPageViewState createState() =>
      _BottomNavigationBarWithPageViewState();
}

class _BottomNavigationBarWithPageViewState
    extends State<BottomNavigationBarWithPageView> {
  var _position = 0;

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

  PageController _controller; //頁面控制器，初始0

  @override
  void initState() {
    _controller = PageController(
      initialPage: _position,
    );

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.orange.withAlpha(88),
            width: MediaQuery.of(context).size.width,
            height: 150,
            child: PageView(
              controller: _controller,
              children: iconsMap.keys
                  .map((e) => Center(
                        child: Text(
                          e,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ))
                  .toList(),
            ),
          ),
          _buildBottomNavigationBar()
        ],
      ),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: (position) {
        _controller.jumpToPage(position);
        setState(() => _position = position);
      },
      currentIndex: _position,
      elevation: 1,
      type: BottomNavigationBarType.shifting,
      fixedColor: Colors.white,
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
}
