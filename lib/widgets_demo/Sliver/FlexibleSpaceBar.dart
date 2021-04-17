import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';
import 'package:flutter_widgets_3/widgets_demo/Sliver/_sliver_shared.dart';

class FlexibleSpaceBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: 190.0,
      child: CustomScrollView(
        slivers: <Widget>[
          _buildSliverAppBar(),
          _buildSliverFixedExtentList()
        ],
      ),
    );
  }

  Widget _buildSliverAppBar() {
    return SliverAppBar(
      expandedHeight: 190.0,
      leading: sLeading(),
      actions: sActions(),
      pinned: true,
      backgroundColor: sAppBarColor,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: false,
        title: sTitle(),
        titlePadding: EdgeInsets.only(left: 55, bottom: 15),
        collapseMode: CollapseMode.parallax,
        stretchModes: [
          StretchMode.blurBackground,
          StretchMode.zoomBackground,
          StretchMode.fadeTitle,
        ],
        background: sSliverAppBarBackground()
      ),
    );
  }

  Widget _buildSliverFixedExtentList() => SliverFixedExtentList(
    itemExtent: 60,
    delegate: SliverChildBuilderDelegate(
      (_, int index) => sListItem(index),
      childCount: sColorData.length
    ),
  );
}
