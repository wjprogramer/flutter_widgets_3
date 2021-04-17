import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';
import 'package:flutter_widgets_3/widgets_demo/Sliver/_sliver_shared.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';

class SliverToBoxAdapterDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: 300,
      child: CustomScrollView(
        slivers: <Widget>[
          sSliverAppBar(useIcon: false),
          _buildCommonWidget(),
          _buildSliverList(),
        ],
      ),
    );
  }

  /// KeyPoint: SliverToBoxAdapter
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
      childCount: sColorData.length,
    ),
  );
}
