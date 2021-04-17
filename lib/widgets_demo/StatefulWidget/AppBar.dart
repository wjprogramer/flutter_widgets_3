import 'package:flutter/material.dart';
import 'PopupMenuButton.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';

class TabAppBar extends StatefulWidget {
  @override
  _TabAppBarState createState() => _TabAppBarState();
}

class _TabAppBarState extends State<TabAppBar>
    with SingleTickerProviderStateMixin {

  var colorOf = {
    'PAFF' : Color(0xFF58BC98),
    'NEKO#ΦωΦ' : Color(0xFFBF819C),
    'ROBO_Head' : Color(0xFF8AB2BE),
    'Ivy' : Color(0xFFB81D1D),
    'Crystal PuNK' : Color(0xFFA44C60),
    'Vanessa' : Color(0xFFA0DEDD),
    'Hello World' : Color(0xFFFF9DBF),
    'Miku'  : Color(0xFF00BCD0),
    'Xenon' : Color(0xFF963237),
    'ConneR' : Color(0xFFD27D3F),
    'Cherry' : Color(0xFFA74B60),
    'JOE' : Color(0xFF614569),
    'Sagar' : Color(0xFFAD8B44),
    'Rin' : Color(0xFF80AD2F),
    'Aroma' : Color(0xFF59BF9A),
    'Nora' : Color(0xFF8AB2BD),
    'Neko' : Color(0xFFCC7D9D),
  };

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: colorOf.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      child: Column(
        children: <Widget>[
          Container(
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AssetPath.BG1,
                ),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: _buildAppBar(),
          ),
          Container(
            height: 150,
            child: _buildTableBarView(),
          )
        ],
      ),
    );
  }

  Widget _buildAppBar() => AppBar(
        title: Text('Cytus II'),
        elevation: 1,
        leading: BackButton(),
        backgroundColor: Colors.black45,
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.star),
              tooltip: 'like',
              onPressed: () {
                // do nothing
              }),
          CustomPopupMenuButton()
        ],
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: colorOf.entries
              .map((e) => Tab(
                text: e.key,
              ))
              .toList(), // tabs.map((e) => Tab(text: e)).toList()
        ),
      );

  Widget _buildTableBarView() => TabBarView(
      controller: _tabController,
      children: colorOf.entries
          .map((e) => Container(
            height: 150,
            color: e.value,
            child: Center(
                    child: Text(
                  e.key,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
          ))
          .toList());
}
