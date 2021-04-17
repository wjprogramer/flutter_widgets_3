import 'package:flutter/material.dart';
import 'PopupMenuButton.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';

class CustomScaffold extends StatefulWidget {
  CustomScaffold({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CustomScaffoldState();
}

// AppBar 默认的实例,有状态
class _CustomScaffoldState extends State with SingleTickerProviderStateMixin {
  final tabs = ['风画庭', '雨韵舍', '雷鸣殿', '电疾堂', '霜寒阁', '雪月楼'];
  var _position = 0;
  final iconsMap = {
    "圖鑑": Icons.home,
    "動態": Icons.toys,
    "喜歡": Icons.favorite,
    "手冊": Icons.class_,
    "我的": Icons.account_circle,
  };
  final _colors = [
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.purple,
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 300,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        drawer: _buildLeftDrawer(),
        endDrawer: _buildLeftDrawer(),
        appBar: AppBar(
          title: Text('风雅六社'),
          backgroundColor: Colors.blue,
          centerTitle: true,
          actions: <Widget>[Icon(Icons.star), CustomPopupMenuButton()],
          bottom: _buildTabBar(),
        ),
        body: _buildTableBarView(),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  Drawer _buildLeftDrawer() => Drawer(
        elevation: 1,
        child: Image.asset(
          AssetPath.COVERS[0],
          fit: BoxFit.cover,
        ),
      );

  Widget _buildTabBar() => TabBar(
        isScrollable: true,
        controller: _tabController,
        indicatorColor: Colors.orangeAccent,
        tabs: tabs.map((e) => Tab(text: e)).toList(),
      );

  Widget _buildBottomNavigationBar() => BottomNavigationBar(
        onTap: (position) => setState(() => _position = position),
        currentIndex: _position,
        elevation: 1,
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

  Widget _buildTableBarView() => TabBarView(
      controller: _tabController,
      children: tabs
          .map((e) => Center(
                  child: Text(
                e,
                style: TextStyle(color: Colors.blue, fontSize: 20),
              )))
          .toList());
}
