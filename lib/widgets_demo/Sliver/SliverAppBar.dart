import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';

import '_sliver_shared.dart';

class SliverAppBarDemo extends StatefulWidget {
  @override
  _SliverAppBarDemoState createState() => _SliverAppBarDemoState();
}

class _SliverAppBarDemoState extends State<SliverAppBarDemo> {
  bool _floating = false;
  bool _pinned = false;
  bool _snap = false;

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: 300,
      bottomPanel: _buildTool(),
      child: Container(
        height: 300,
        child: CustomScrollView(
          slivers: <Widget>[
            _buildSliverAppBar(),
            _buildSliverFixedExtentList()
          ],
        ),
      ),
    );
  }

  Widget _buildSliverAppBar() {
    /// KeyPoint: SliverAppBar
    return SliverAppBar(
      expandedHeight: 190.0,
      leading: sLeading(),
      title: sTitle(),
      actions: sActions(),
      elevation: 5,
      floating: _floating,
      pinned: _pinned,
      snap: _snap,
      backgroundColor: sAppBarColor,
      flexibleSpace: FlexibleSpaceBar(//伸展处布局
        titlePadding: EdgeInsets.only(left: 55, bottom: 15),
        collapseMode: CollapseMode.parallax,
        background: Image.asset(
          AssetPath.BG1,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildSliverFixedExtentList() => SliverFixedExtentList(
    itemExtent: 60,
    delegate: SliverChildBuilderDelegate(
      (_, int index) => sListItem(index),
      childCount: sColorData.length
    )
  );

  /// --------------------------- Not Key Points ---------------------------

  // region Not Key Points
  Widget _buildTool() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('floating'),
        Switch(
            value: _floating,
            onChanged: (v) {
              if(_snap&&!v){
                _snap =false;
              }
              setState(() => _floating = v);
            }),
        Text('pinned'),
        Switch(
            value: _pinned,
            onChanged: (v) => setState(() => _pinned = v)),
        Text('snap'),
        Switch(
            value: _snap,
            onChanged: (v) {
              if(_floating){
                setState(() => _snap = v);
              }
            }),
      ],
    );
  }
  // endregion
}
