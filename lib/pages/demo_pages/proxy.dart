import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/widgets_demo/ProxyWidget/DefaultTextStyle.dart';
import 'package:flutter_widgets_3/widgets_demo/ProxyWidget/DividerTheme.dart';
import 'package:flutter_widgets_3/widgets_demo/ProxyWidget/DropdownButtonHideUnderline.dart';
import 'package:flutter_widgets_3/widgets_demo/ProxyWidget/Expanded.dart';
import 'package:flutter_widgets_3/widgets_demo/ProxyWidget/Flexible.dart';
import 'package:flutter_widgets_3/widgets_demo/ProxyWidget/IconTheme.dart';
import 'package:flutter_widgets_3/widgets_demo/ProxyWidget/InheritedWidget.dart';
import 'package:flutter_widgets_3/widgets_demo/ProxyWidget/InheritedWidget/InheritedTheme/ButtonTheme.dart';
import 'package:flutter_widgets_3/widgets_demo/ProxyWidget/MediaQuery.dart';
import 'package:flutter_widgets_3/widgets_demo/ProxyWidget/Positioned.dart';
import 'package:flutter_widgets_3/widgets_demo/ProxyWidget/ScrollConfiguration.dart';
import 'package:flutter_widgets_3/widgets_demo/ProxyWidget/SliderTheme.dart';
import 'package:flutter_widgets_3/common/widgets/text.dart';

class ProxyPage extends StatefulWidget {
  @override
  _ProxyPageState createState() => _ProxyPageState();
}

class _ProxyPageState extends State<ProxyPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Proxy'),),
      body: ListView(
        children: <Widget>[
          h2('Expanded'),
          expandedDemo(),
          h2('InheritedWidget'),
          InheritedWidgetDemo(),
          h2('DefaultTextStyle'),
          DefaultTextStyleDemo(),
          h2('DropdownButtonHideUnderline'),
          CustomDropDownButtonHideUnderline(),
          h2('Flexible'),
          FlexibleDemo(),
          h2('MediaQuery'),
          CustomMediaQuery(),
          h2('Positioned'),
          CustomPositioned(),
          h2('ScrollConfiguration'),
          CustomScrollConfiguration(),
          h1('_Theme'),
          p('1. xxxTheme.of'),
          h2('ButtonTheme'),
          buttonThemeDemo(),
          h2('DividerTheme'),
          dividerThemeDemo(),
          h2('IconTheme'),
          iconThemeDemo(),
          h2('SliderTheme'),
          SliderThemeDemo(),
        ],
      ),
    );
  }

}
