import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomCupertinoActionSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: 300,
      child: ClipRect(
        child: Stack(
          children: <Widget>[
            IgnorePointer(
              child: _buildCupertinoActionSheet(context)
            ),
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
              bottom: 50,
              left: 0,
              right: 0,
              child: Center(
                child: _buildRaisedButton(context),
              )
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCupertinoActionSheet(BuildContext context) =>
      Container(
        alignment: Alignment.bottomCenter,
        child: CupertinoActionSheet(
          title: Text("Please chose a language"),
          message: Text('the language you use in this application.'),
          cancelButton: CupertinoActionSheetAction(
              onPressed: () => Navigator.pop(context), child: Text("Cancel")),
          actions: <Widget>[
            CupertinoActionSheetAction(
                onPressed: () => Navigator.pop(context), child: Text('Dart')),
            CupertinoActionSheetAction(
                onPressed: () => Navigator.pop(context), child: Text('Java')),
            CupertinoActionSheetAction(
                onPressed: () => Navigator.pop(context), child: Text('Kotlin')),
          ],
        ),
      );

  Widget _buildRaisedButton(BuildContext context) => RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        color: Colors.blue[300],
        onPressed: () => showDialog(
            context: context,
            builder: (ctx) => _buildCupertinoActionSheet(context)),
        child: Text(
          'Just Show It !',
          style: TextStyle(color: Colors.white),
        ),
      );
}
