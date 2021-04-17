import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/AlignTransition.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/AnimatedPositionedDirectional.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/AppBar.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/BottomAppBar.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/BottomNavigationBar.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/BottomNavigationBar_Page.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/CircularProgressIndicator.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/Checkbox.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/DatePicker.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/DateRangePicker.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/DefaultTextStyleTransition.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/Dismissible.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/DragTarget.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/Draggable.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/DropdownButton.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/ExpandIcon.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/ExpansionPanelList.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/ExpansionTile.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/Form.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/FormField.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/FutureBuilder.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/Image.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/Ink.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/InkResponse.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/InkWell.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/AnimatedPadding.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/InteractiveViewer.dart';
import 'package:flutter_widgets_3/common/widgets/text.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/AnimatedCrossFade.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/AnimatedList.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/AnimatedSize.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/AnimatedWidget.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/DecoratedBoxTransition.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/Hero.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/PositionedTransition.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/RotationTransition.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/ScaleTransition.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/SizeTransition.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/SlideTransition.dart';

class StfulPageAI extends StatefulWidget {
  @override
  _StfulPageAIState createState() => _StfulPageAIState();
}

class _StfulPageAIState extends State<StfulPageAI> {

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
          h2('AlignTransition'),
          AlignTransitionDemo(),

          h2('AnimatedCrossFade'),
          AnimatedCrossFadeDemo(),

          h2('AnimatedListState'),
          AnimatedListDemo(),

          h2('AnimatedPadding'),
          AnimatedPaddingDemo(),

          h2('AnimatedPositionedDirectional'),
          CustomAnimatedPositionedDirectional(),

          h2('AppBar'),
          TabAppBar(),

          h2('BottomAppBar'),
          p('【notchMargin】 : 间隔距离   【double】'),
          CustomBottomAppBar(),

          h2('BottomNavigationBar'),
          CustomBottomNavigationBar(),
          p('可結合PageView'),
          BottomNavigationBarWithPageView(),

          h2('Checkbox'),
          p('可以設定 tristate: true，有true、false、null'),
          CustomCheckbox(),

          h2('CircularProgressIndicator'),
          CustomCircularProgressIndicator(),

          h2('DatePicker'),
          CustomDatePicker(),

          h2('DateRangePicker'),
          CustomDateRangePicker(),

          h2('DefaultTextStyleTransition'),
          CustomDefaultTextStyleTransition(),

          h2('Dismissible'),
          CustomDismissible(),

          h2('Draggable'),
          CustomDraggable(),

          h2('DragTarget'),
          CustomDragTarget(),

          h2('DropdownButton'),
          CustomDropDownButton(),

          h2('ExpandIcon'),
          CustomExpandIcon(),

          h2('ExpansionPanelList'),
          CustomExpansionPanelList(),

          h2('ExpansionTile'),
          CustomExpansionTile(),

          h2('Form'),
          CustomForm(),

          h2('FormField'),
          FormFieldDemo(),

          h2('FutureBuilder'),
          CustomFutureBuilder(),

          h2('Hero'),
          HeroDemo(),

          h2('Image'),
          LoadImage(),

          h2('InteractiveViewer'),
          InteractiveViewerDemo(),

          h2('Ink'),
          CustomInk(),


          h2('InkResponse'),
          CustomInkResponse(),

          h2('InkWell'),
          CustomInkWell(),

        ],
      ),
    );
  }
}
