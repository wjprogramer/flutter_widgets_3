import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';

class SliverPaddingDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.only(top: 80),
            sliver: _sliverGrid(),
          )
        ],
      ),
    );
  }

  /// --------------------------- Not Key Points ---------------------------

  // region Not Key Points
  _sliverGrid() {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 180,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        childAspectRatio: 1 / 0.618,
      ),
      delegate: SliverChildListDelegate([
        ...sColorData2.map((e) => Container(
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
                  ],
              ),
            ),
          ),
        )).toList(),
      ]),
    );
  }
  // endregion
}

