import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomBottomAppBar extends StatefulWidget {
  @override
  _CustomBottomAppBarState createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  var _position = 0;
  var _location = FloatingActionButtonLocation.centerDocked;
  final iconsMap = {
    "圖鑑": Icons.home,
    "動態": Icons.toys,
    "喜歡": Icons.favorite,
    "手冊": Icons.class_,
  };

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: 180,
      child: Scaffold(
        backgroundColor: Colors.purple.withAlpha(22),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue[300],
          onPressed: () =>  {  },
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: _buildBottomAppBar(),
        floatingActionButtonLocation: _location,
        body: _buildContent(),
      ),
    );
  }

  Widget _buildBottomAppBar() {
    return BottomAppBar(
      elevation: 1,
      shape: CircularNotchedRectangle(),
      notchMargin: 5,
      color: Colors.white,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: info.asMap().keys.map((i) => _buildChild(i)).toList()
            ..insertAll(isCenter ? 2 : 4, [SizedBox(width: 30)])),
    );
  }

  Container _buildContent() {
    return Container(
      alignment: Alignment.center,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: <Widget>[
          Text(
            '當前頁索引:$_position',
            style: TextStyle(fontSize: 18),
          ),
          Switch(
              value: isCenter,
              onChanged: (v) {
                setState(() {
                  _location = v
                      ? FloatingActionButtonLocation.centerDocked
                      : FloatingActionButtonLocation.endDocked;
                });
              }),
        ],
      ),
    );
  }

  List<String> get info => iconsMap.keys.toList();

  bool get isCenter => _location == FloatingActionButtonLocation.centerDocked;

  Widget _buildChild(int i) {
    var active = i == _position;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => setState(() => _position = i),
        child: Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.center,
          children: <Widget>[
            Icon(
              iconsMap[info[i]],
              color: active ? Colors.blue[200] : Colors.black,
              size: 30,
            ),
            Text(info[i],
                style: TextStyle(
                    color: active ? Colors.blue[200] : Colors.black, fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
