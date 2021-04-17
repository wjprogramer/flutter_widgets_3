import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';
import 'package:flutter_widgets_3/widgets_demo/Sliver/_sliver_shared.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';

class SliverFixedExtentListDemo extends StatefulWidget {
  @override
  _SliverFixedExtentListDemoState createState() => _SliverFixedExtentListDemoState();
}

class _SliverFixedExtentListDemoState extends State<SliverFixedExtentListDemo> {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: 300,
      child: CustomScrollView(
        slivers: <Widget>[
          sSliverAppBar(),
          _buildSliverList()
        ],
      ),
    );
  }

  Widget _buildSliverList() => SliverFixedExtentList(
    itemExtent: 50,
    delegate: SliverChildBuilderDelegate(
      (_, int index) => sListItem(index),
      childCount: sColorData.length
    ),
  );
}
