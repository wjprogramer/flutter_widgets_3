import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/LicensePage.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/LinearProgressIndicator.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/ListWheelScrollView.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/LongPressDraggable.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/Material.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/MaterialApp.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/MonthPicker.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/Navigator.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/NestedScrollView.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/Overlay.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/PageView.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/PopupMenuButton.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/PopupMenuDivider.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/Radio.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/RangeSlider.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/RawChip_press.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/RawKeyboardListener.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/RawMaterialButton.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/RefreshIndicator.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/RelativePositionedTransition.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/ReorderableListView.dart';
import 'package:flutter_widgets_3/common/widgets/text.dart';

class StfulPageJR extends StatefulWidget {
  @override
  _StfulPageJRState createState() => _StfulPageJRState();
}

class _StfulPageJRState extends State<StfulPageJR> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('StatefulWidget'),),
      body: ListView(
        children: <Widget>[
          h2('LicensePage'),
          CustomLicensePage(),
          h2('LinearProgressIndicator'),
          CustomLinearProgressIndicator(),
          h2('ListWheelScrollView'),
          CustomListWheelScrollView(),
          h2('LongPressDraggable'),
          CustomLongPressDraggable(),
          h2('Material'),
          CustomMaterial(),
          h2('MaterialApp'),
          CustomMaterialApp(),
          h2('MonthPicker'),
          CustomMonthPicker(),
          h2('Navigator'),
          NavigatorDemo(),

          h2('NestedScrollView'),
          NestedScrollViewDemo(),

          h2('Overlay'),
          CustomOverlay(),
          h2('PageView'),
          CustomPageView(),
          h2('PopupMenuButton'),
          CustomPopupMenuButton(),
          h2('PopupMenuDivider'),
          CustomPopupMenuDivider(),
          h2('Radio'),
          CustomRadio(),
          h2('RangeSlider'),
          CustomRangeSlider(),
          h2('RawChip'),
          PressRawChip(),
          h2('RawMaterialButton'),
          CustomRawMaterialButton(),
          h2('RefreshIndicator'),
          CustomRefreshIndicator(),
          h2('RelativePositionedTransition'),
          CustomRelativePositionedTransition(),
          h2('ReorderableListView'),
          CustomReorderableListView(),
          h2('RawKeyboardListener'),
          RawKeyboardListenerDemo(),
        ],
      ),
    );
  }
}
