import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/CupertinoButton.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/CupertinoActivityIndicator.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/CupertinoApp.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/CupertinoContextMenu.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/CupertinoContextMenuAction.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/CupertinoDatePicker.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/CupertinoNavigationBar.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/CupertinoPageScaffold.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/CupertinoPicker.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/CupertinoScrollbar.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/CupertinoSlider.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/CupertinoSwitch.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/CupertinoTabBar.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/CupertinoTabScaffold.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/CupertinoTimerPicker.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/CupertinoActionSheet.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/CupertinoActionSheetAction.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/CupertinoAlertDialog.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/CupertinoDialogAction.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/CupertinoFullscreenDialogTransition.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/CupertinoPageTransition.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/CupertinoTheme.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/CupertinoTheme_use.dart';
import 'package:flutter_widgets_3/common/widgets/text.dart';

class CupertinoPage extends StatefulWidget {
  @override
  _CupertinoPageState createState() => _CupertinoPageState();
}

class _CupertinoPageState extends State<CupertinoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          h2('CupertinoActionSheet'),
          CustomCupertinoActionSheet(),

          h2('CupertinoActionSheetAction'),
          CustomCupertinoActionSheetAction(),

          h2('CupertinoActivityIndicator'),
          CustomCupertinoActivityIndicator(),

          h2('CupertinoAlertDialog'),
          CustomCupertinoAlertDialog(),

          h2('CupertinoApp'),
          CustomCupertinoApp(),

          h2('CupertinoButton'),
          CustomCupertinoButton(),

          h2('CupertinoContextMenu'),
          CustomCupertinoContextMenu(),

          h2('CupertinoContextMenuAction'),
          CustomCupertinoContextMenuAction(),

          h2('CupertinoDatePicker'),
          CustomCupertinoDatePicker(),

          h2('CupertinoDialogAction'),
          CustomCupertinoDialogAction(),

          h2('CupertinoFullscreenDialogTransition'),
          CupertinoFullscreenDialogTransitionDemo(),

          h2('CupertinoNavigationBar'),
          CustomCupertinoNavigationBar(),

          h2('CupertinoPageScaffold'),
          CustomCupertinoPageScaffold(),

          h2('CupertinoPageTransition'),
          CupertinoPageTransitionDemo(),

          h2('CupertinoPicker'),
          CustomCupertinoPicker(),

          h2('CupertinoPopupSurface'),

          h2('CupertinoScrollbar'),
          CustomCupertinoScrollbar(),

          h2('CupertinoSegmentedControl'),

          h2('CupertinoSlider'),
          CustomCupertinoSlider(),

          h2('CupertinoSlidingSegmentedControl'),

          h2('CupertinoSwitch'),
          CustomCupertinoSwitch(),

          h2('CupertinoTabBar'),
          CustomCupertinoTabBar(),

          h2('CupertinoTabScaffold'),
          CustomCupertinoTabScaffold(),

          h2('CupertinoTabView'),

          h2('CupertinoTextField'),

          h2('CupertinoTheme'),
          TextCupertinoTheme(),
          CustomCupertinoTheme(),

          h2('CupertinoTimerPicker'),
          CustomCupertinoTimerPicker(),

          h2('CupertinoDialog (deprecated)'),

        ],
      ),
    );
  }
}
