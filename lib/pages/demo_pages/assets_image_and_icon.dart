import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/widgets_demo/Other/AssetBundle.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Icon.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Icon_diy.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Image.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/RawImage.dart';
import 'package:flutter_widgets_3/common/widgets/text.dart';

class AssetsImageAndIconWidgetsPage extends StatefulWidget {
  @override
  _AssetsImageAndIconWidgetsPageState createState() => _AssetsImageAndIconWidgetsPageState();
}

class _AssetsImageAndIconWidgetsPageState extends State<AssetsImageAndIconWidgetsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          h2('AssetBundle'),
          AssetBundleDemo(),
          h2('Icon'),
          CustomIcon(),
          p('可在 iconfont 網站下載圖示字體使用'),
          MyIcon(),
          h2('Image'),
          ImageDemo(),
          h2('RawImage'),
          RawImageDemo(),
          h2(''),
          h2(''),
          h2(''),
          h2(''),
          h2(''),
          h2(''),
          h2(''),
          h2(''),
        ],
      ),
    );
  }
}
