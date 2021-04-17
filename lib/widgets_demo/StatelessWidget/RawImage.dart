import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class RawImageDemo extends StatefulWidget {
  @override
  _RawImageDemoState createState() => _RawImageDemoState();
}

class _RawImageDemoState extends State<RawImageDemo> {

  bool _isInitialized = false;

  Uint8List _imageUint8List;
  ui.Image image;

  _init() async {
    ByteData clockData = await rootBundle.load(AssetPath.COVERS[3]);
    _imageUint8List = clockData.buffer.asUint8List();

    var codec = await ui.instantiateImageCodec(_imageUint8List);
    ui.FrameInfo fi = await codec.getNextFrame();
    image = fi.image;

    setState(() {
      _isInitialized = true;
    });
  }

  @override
  void initState() {
    super.initState();

    _init();
  }

  @override
  Widget build(BuildContext context) {

    Widget body;

    if (!_isInitialized) {
      body = Center(child: CircularProgressIndicator(),);
    } else {
      body = Container(
        width: double.infinity,
        child: RawImage(
          image: image,
          fit: BoxFit.cover,
        ),
      );

    }

    return widgetContainer(
      child: body
    );
  }
}
