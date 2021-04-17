import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomDrawer extends StatelessWidget {
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
        endDrawer: Drawer(
          elevation: 3,
          child: _buildChild(),
        ),
        body: Center(
          child: Text('<< 展開側邊攔 >>', style: TextStyle(fontSize: 20,),),
        ),
      ),
    );
  }

  Widget _buildChild() => ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
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
          ),
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
}
