import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class AboutListTileDemo extends StatefulWidget {
  @override
  _AboutListTileDemoState createState() => _AboutListTileDemoState();
}

class _AboutListTileDemoState extends State<AboutListTileDemo> {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: AboutListTile(
        icon: Icon(Icons.info),
        applicationIcon: Image.asset(AssetPath.ICON, width: 50,),
        applicationName: 'Hello World',
        applicationVersion: 'v0.0.1',
        applicationLegalese: 'Copyright© 2018-2020',
        aboutBoxChildren: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'キズナアイ（Hello World）は、Activ8株式会社が制作し、現在はHello World株式会社所属の日本のバーチャルYouTuber、音楽アーティスト。人工知能（AI）を自称している。 ',
              style: TextStyle(color: Color(0xff999999), fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
