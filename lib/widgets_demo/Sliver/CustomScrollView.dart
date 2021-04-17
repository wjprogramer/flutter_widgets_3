import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';
import 'package:flutter_widgets_3/widgets_demo/Sliver/_sliver_shared.dart';

class CustomScrollViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: 190.0,
      child: CustomScrollView(
        anchor: 0,
        scrollDirection: Axis.vertical,
        reverse: false,
        slivers: [
          _buildSliverAppBar(),
          _buildSliverFixedExtentList(),
        ],
      ),
    );
  }

  _buildSliverAppBar() {
    return SliverAppBar(
      expandedHeight: 190.0,
      leading: sLeading(),
      backgroundColor: sAppBarColor,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(left: 55, bottom: 15),
        collapseMode: CollapseMode.parallax,
        title: sTitle(),
        background: sSliverAppBarBackground(),
      ),
    );
  }

  Widget _buildSliverFixedExtentList() => SliverFixedExtentList(
    itemExtent: 100,
    delegate: SliverChildBuilderDelegate((_, int index) => _item(index),
      childCount: covers.length
    ),
  );

  /// --------------------------- Not Key Points ---------------------------

  // region Not Key Points
  Widget _item(index) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      alignment: Alignment.center,
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.blue[50].withOpacity(0.5),
      ),
      child: Container(
        margin: const EdgeInsets.only(top: 5, left: 5, right: 5,),
        padding: const EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.blue.withOpacity(0.5),
            ),
          ),
        ),
        child: Row(
            children: [
              Image.asset(
                covers[index].imagePath,
              ),
              SizedBox(width: 20,),
              Text(
                covers[index].name,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                          color: Colors.blue[500],
                          offset: Offset(.5, .5),
                          blurRadius: 20
                      ),
                    ]
                ),
              ),
            ]
        ),
      ),
    );
  }
  // endregion
}

