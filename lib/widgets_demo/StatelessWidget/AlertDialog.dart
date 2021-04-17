import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: 300,
      child: ClipRect(
        child: Stack(
          children: <Widget>[
            IgnorePointer(child: _buildAlertDialog()),
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaY: 3.0,
                sigmaX: 3.0
              ),
              child: Container(
                height: 10,
                color: Colors.blue.withOpacity(0),
              ),
            ),
            Positioned(
              bottom: 25,
              left: 0,
              right: 0,
              child: Center(
                  child: _buildRaisedButton(context)
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRaisedButton(BuildContext context) => RaisedButton(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))),
    color: Colors.blue[300],
    onPressed: () {
      showDialog(context: context, builder: (ctx) => _buildAlertDialog());
    },
    child: Text(
      'Just Show It !',
      style: TextStyle(color: Colors.white),
    ),
  );

  Widget _buildAlertDialog() {
    return AlertDialog(
      title: _buildTitle(),
      titleTextStyle: TextStyle(fontSize: 20, color: Colors.black),
      titlePadding: EdgeInsets.only(
        top: 5,
        left: 20,
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 5),
      backgroundColor: Colors.white,
      content: _buildContent(),
      actions: <Widget>[
        Icon(Icons.android, color: Colors.blue,),
        Icon(Icons.add, color: Colors.blue,),
        Icon(Icons.g_translate, color: Colors.blue,),
        Icon(Icons.games, color: Colors.blue,),
      ],
      elevation: 4,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }

  Widget _buildTitle() {
    return Row(
      //标题
      children: <Widget>[
        Image.asset(
          AssetPath.HEAD_ICON,
          width: 30,
          height: 30,
        ),
        SizedBox(width: 10,),
        Expanded(
            child: Text(
              "關於",
              style: TextStyle(fontSize: 18),
            )),
        CloseButton()
      ],
    );
  }

  Widget _buildContent() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            '      絆愛的角色形象由森倉圓設計，3D模型由Tomitake製作，Tda負責模型製作監督，幕後劇情編輯等人的真實身分現仍不明',
            style: TextStyle(color: Color(0xff999999), fontSize: 16),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}