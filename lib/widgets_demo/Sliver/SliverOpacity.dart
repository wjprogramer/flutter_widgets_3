import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';
import 'package:flutter_widgets_3/widgets_demo/Sliver/_sliver_shared.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';

class SliverOpacityDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: 300,
      child: CustomScrollView(
        slivers: <Widget>[
          sSliverAppBar(),
          SliverPadding(
              padding: EdgeInsets.only(top: 10),
              sliver: SliverOpacity(opacity: 0.2, sliver: _buildSliverGrid()))
        ],
      ),
    );
  }

  Widget _buildSliverGrid() => SliverGrid.extent(
    childAspectRatio: 1 / 0.618,
    maxCrossAxisExtent: 180,
    crossAxisSpacing: 5,
    mainAxisSpacing: 5,
    children: sColorData2
        .map((e) => Container(
              alignment: Alignment.center,
              width: 100,
              height: 60,
              color: e,
              child: Text(
                colorString(e),
                style: TextStyle(color: Colors.white, shadows: [
                  Shadow(
                      color: Colors.black,
                      offset: Offset(.5, .5),
                      blurRadius: 2)
                ]),
              ),
            ))
        .toList(),
  );
}
