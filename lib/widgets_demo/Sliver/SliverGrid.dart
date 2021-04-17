import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: 190,
      child: CustomScrollView(
        slivers: [
          _sliverAppBar(),
          _sliverGrid(),
        ],
      )
    );
  }
  _sliverAppBar() {
    return SliverAppBar(
      expandedHeight: 190.0,
      leading: Container(
        margin: EdgeInsets.all(10),
        child: Image.asset(AssetPath.HEAD_ICON),
      ),
      title: sTitle(),
      actions: <Widget>[
        IconButton(
          onPressed: () { },
          icon: ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white,
                ]
            ).createShader(bounds),
            child: Image.asset(
              AssetPath.ICON,
              height: 25,
            ),
            blendMode: BlendMode.srcATop,
          ),
        ),
      ],
      elevation: 5,
      pinned: true,
      backgroundColor: sAppBarColor,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(left: 55, bottom: 15),
        collapseMode: CollapseMode.parallax,
        background: Image.asset(
          AssetPath.BG1,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  _sliverGrid() {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 180,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        childAspectRatio: 1 / 0.618,
      ),
      delegate: SliverChildListDelegate([
        ...sColorData2.map((e) => _item(e)).toList(),
      ]),
    );
  }

  /// --------------------------- Not Key Points ---------------------------

  // region Not Key Points
  Widget _item(e) {
    return Container(
      color: e,
      child: Center(
        child: Text(
          colorString(e),
          style: TextStyle(
              color: Colors.white,
              shadows: [
                Shadow(
                    color: Colors.black,
                    offset: Offset(.5, .5),
                    blurRadius: 2
                )
              ]
          ),
        ),
      ),
    );
  }
  // endregion
}
