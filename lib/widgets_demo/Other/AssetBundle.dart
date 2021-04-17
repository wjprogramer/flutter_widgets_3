import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class AssetBundleDemo extends StatefulWidget {
  @override
  _AssetBundleDemoState createState() => _AssetBundleDemoState();
}

class _AssetBundleDemoState extends State<AssetBundleDemo> {

  bool _isInitialized = false;

  String _cytusFromJson = '';
  String _characterFromJson = '';
  Uint8List _imageUint8List;

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  Widget build(BuildContext context) {
    Widget body;

    if (!_isInitialized) {
      body = Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      body = Stack(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            child: Image.memory(_imageUint8List, fit: BoxFit.cover,),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Text(
              '$_cytusFromJson × $_characterFromJson',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                shadows: [
                  BoxShadow(
                    color: Colors.blue,
                    blurRadius: 3.0,
                    spreadRadius: 3.0,
                  ),
                ]
              ),
            ),
          ),
        ],
      );
    }

    return widgetContainer(
      height: null,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('讀取 AssetBundle：', style: TextStyle(fontStyle: FontStyle.italic,),),
          ),
          body,
        ],
      ),
    );
  }

  _init() async {
    String distancesText = await rootBundle.loadString('assets/texts/sample.json');
    Map jsonObj = json.decode(distancesText);
    _cytusFromJson = jsonObj['cytus'];

    Map jsonObj2 = await rootBundle
        .loadStructuredData('assets/texts/sample.json', (String s) async {
      return json.decode(s);
    });
    _characterFromJson = jsonObj2['character'];

    ByteData clockData = await rootBundle.load(AssetPath.BG1);
    _imageUint8List = clockData.buffer.asUint8List();

    setState(() {
      _isInitialized = true;
    });
  }
}
