import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';
import 'package:flutter_widgets_3/widgets_demo/Sliver/_sliver_shared.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';

class SliverListDemo extends StatelessWidget {
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

  Widget _buildSliverList() => SliverList(
        delegate: SliverChildBuilderDelegate(
            (_, int index) => sListItem(index),
            childCount: sColorData.length),
      );
}
