import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/widgets_demo/Sliver/CustomScrollView.dart';
import 'package:flutter_widgets_3/widgets_demo/Sliver/FlexibleSpaceBar.dart';
import 'package:flutter_widgets_3/widgets_demo/Sliver/SliverAppBar.dart';
import 'package:flutter_widgets_3/widgets_demo/Sliver/SliverFillViewport.dart';
import 'package:flutter_widgets_3/widgets_demo/Sliver/SliverFixedExtentList.dart';
import 'package:flutter_widgets_3/widgets_demo/Sliver/SliverGrid.dart';
import 'package:flutter_widgets_3/widgets_demo/Sliver/SliverList.dart';
import 'package:flutter_widgets_3/widgets_demo/Sliver/SliverOpacity.dart';
import 'package:flutter_widgets_3/widgets_demo/Sliver/SliverPadding.dart';
import 'package:flutter_widgets_3/widgets_demo/Sliver/SliverPersistentHeader.dart';
import 'package:flutter_widgets_3/widgets_demo/Sliver/SliverToBoxAdapter.dart';
import 'package:flutter_widgets_3/common/widgets/text.dart';

class SliverPage extends StatefulWidget {
  @override
  _SliverPageState createState() => _SliverPageState();
}

class _SliverPageState extends State<SliverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sliver'),),
      body: ListView(
        children: <Widget>[
          h2('CustomScrollView'),
          CustomScrollViewDemo(),

          h2('FlexibleSpaceBar'),
          FlexibleSpaceBarDemo(),

          h2('SliverAppBar'),
          SliverAppBarDemo(),

          h2('SliverFillViewport'),
          SliverFillViewportDemo(),

          h2('SliverFixedExtentList'),
          SliverFixedExtentListDemo(),

          h2('SliverGrid'),
          SliverGridDemo(),

          h2('SliverList'),
          SliverListDemo(),

          h2('SliverOpacity'),
          SliverOpacityDemo(),

          h2('SliverPadding'),
          SliverPaddingDemo(),

          h2('SliverPersistentHeader'),
          SliverPersistentHeaderDemo(),

          h2('SliverToBoxAdapter'),
          SliverToBoxAdapterDemo(),
        ],
      ),
    );
  }
}
