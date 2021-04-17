import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';
import 'package:flutter_widgets_3/widgets_demo/Sliver/_sliver_shared.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';

class SliverPersistentHeaderDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: 500,
      child: CustomScrollView(
        slivers: <Widget>[
          sSliverAppBar(),
          _buildPersistentHeader('アイちゃん',Color(0xffe7fcc9)),
          _buildCommonWidget(),
          _buildPersistentHeader('親分',Color(0xffcca4ff)),
          _buildSliverList()
        ],
      ),
    );
  }

  /// KeyPoint: SliverPersistentHeader
  Widget _buildPersistentHeader(String text,Color color) => SliverPersistentHeader(
    pinned: true,
    delegate: _SliverDelegate(
      minHeight: 40.0,
      maxHeight: 100.0,
      child: Container(
        color: color,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 18,
                shadows: [
                  Shadow(color: Colors.white, offset: Offset(1, 1))
                ]
            ),
          ),
        ),
      ),
    ),
  );

  Widget _buildCommonWidget() => SliverToBoxAdapter(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      color: Colors.grey.withAlpha(22),
      child: ListTile(
        leading: Image.asset(AssetPath.HEAD_ICON),
        title: Text("FUCK YOU"),
        subtitle: Text("Hello World"),
        selected: true,
        contentPadding: EdgeInsets.all(5),
        trailing: Icon(Icons.more_vert),
      ),
    ),
  );

  Widget _buildSliverList() => SliverList(
    delegate: SliverChildBuilderDelegate(
      (_, int index) => sListItem(index),
      childCount: sColorData.length
    ),
  );
}


class _SliverDelegate extends SliverPersistentHeaderDelegate {
  _SliverDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => max(maxHeight, minHeight);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new SizedBox.expand(child: child);
  }

  @override //是否需要重建
  bool shouldRebuild(_SliverDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}