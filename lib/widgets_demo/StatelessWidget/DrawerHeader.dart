import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: 350,
      child: Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        drawer: Drawer(
          elevation: 3,
          child: _buildChild(),
        ),
      ),
    );
  }

  Widget _buildChild() => ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
      _buildHeader(),
      ListTile(
        leading: Icon(
          Icons.star,
          color: Colors.blue,
        ),
        title: Text('我的收藏'),
      ),
      ListTile(
        leading: Icon(
          Icons.palette,
          color: Colors.orangeAccent,
        ),
        title: Text('我的繪畫'),
      ),
      ListTile(
        leading: Icon(
          Icons.insert_drive_file,
          color: Colors.green,
        ),
        title: Text('我的文件'),
      ),
    ],
  );

  Widget _buildHeader() {
    return DrawerHeader(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(left: 20,top: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft:Radius.circular(40),
            topRight:Radius.circular(40)
        ),
        image: DecorationImage(
            image: AssetImage(AssetPath.BG1),
            fit: BoxFit.cover),
      ),
      child: Text(
        'Hello World',
        style: TextStyle(fontSize: 24, color: Colors.white, shadows: [
          Shadow(color: Colors.black, offset: Offset(1, 1), blurRadius: 3)
        ]),
      ),
    );
  }
}