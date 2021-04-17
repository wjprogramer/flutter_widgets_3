import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';
import 'package:flutter_widgets_3/widgets_demo/Sliver/_sliver_shared.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';

class SliverFillViewportDemo extends StatefulWidget {
  @override
  _SliverFillViewportDemoState createState() => _SliverFillViewportDemoState();
}

class _SliverFillViewportDemoState extends State<SliverFillViewportDemo> {
  var _viewportFraction = 0.2;

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: 300,
      bottomPanel: _buildTool(),
      child: CustomScrollView(
        slivers: <Widget>[
          sSliverAppBar(),
          _buildSliverList()
        ],
      ),
    );
  }

  Widget _buildSliverList() => SliverFillViewport(
        viewportFraction: _viewportFraction,
        delegate: SliverChildBuilderDelegate(
            (_, int index) => sListItem(index),
            childCount: sColorData.length),
      );

  _buildTool() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Slider(
              value: _viewportFraction,
              min: 0.01,
              divisions: 20,
              label: _viewportFraction.toStringAsFixed(1),
              max: 2.0,
              onChanged: (v) => setState(() => _viewportFraction = v)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(_viewportFraction.toStringAsFixed(1)),
        ),
      ],
    );
  }
}
