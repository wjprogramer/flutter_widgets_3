import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/Scaffold.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/SelectableText.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/SizeTransition.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/Slider.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/Stepper.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/StreamBuilder.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/StreamBuilder2.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/Switch.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/TabBarView.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/TableRowInkWell.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/TextField.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/TextFormField.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/TimePicker.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/Tooltip.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/WidgetsApp.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/YearPicker.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/scroll_bar_demo.dart';
import 'package:flutter_widgets_3/common/widgets/text.dart';

class StfulPageSZ extends StatefulWidget {
  @override
  _StfulPageSZState createState() => _StfulPageSZState();
}

class _StfulPageSZState extends State<StfulPageSZ> {

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
          h2('Scaffold'),
          CustomScaffold(),
          h2('Scrollable'),
//          CustomScrollable(),
          h2('ScrollBar'),
          ScrollBarDemo(),
          h2('SelectableText'),
          CustomSelectableText(),
          h2('Slider'),
          CustomSlider(),
          h2('Stepper'),
          StepperDemo(),
          h2('StreamBuilder'),
          CustomStreamBuilder(),
          CustomStreamBuilder2(),
          h2('Switch'),
          CustomSwitch(),
          h2('TabBarView'),
          CustomTabBarView(),
          h2('TableRowInkWell'),
          CustomTableRowInkWell(),
          h2('TextField'),
          CustomTextField(),
          h2('TextFormField'),
          CustomTextFormField(),

          h2('TimePicker'),
          CustomTimePicker(),

          h2('Tooltip'),
          CustomTooltip(),

          h2('WidgetsApp'),
//          WidgetsAppDemo(),

          h2('YearPicker'),
          CustomYearPicker(),
          h2(''),
          h2(''),
          h2(''),
          h2(''),
          h2(''),
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
