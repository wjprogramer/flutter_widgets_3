import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/widgets_demo/Other/ErrorWidget.dart';
import 'package:flutter_widgets_3/widgets_demo/Other/Table.dart';
import 'package:flutter_widgets_3/common/widgets/text.dart';

class OtherPage extends StatefulWidget {
  @override
  _OtherPageState createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Other'),),
      body: ListView(
        children: <Widget>[
          h2('ErrorWidget'),
          errorWidgetDemo(),
          h2('Table'),
          tableDemo(),
        ],
      ),
    );
  }
}
