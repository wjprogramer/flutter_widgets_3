import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class IntrinsicHeightDemo extends StatefulWidget {
  @override
  _IntrinsicHeightDemoState createState() => _IntrinsicHeightDemoState();
}

class _IntrinsicHeightDemoState extends State<IntrinsicHeightDemo> {
  @override
  Widget build(BuildContext context) {

    final bar1 = Container(
      height: 50,
      width: 25,
      color: Colors.green[100],
    );

    final bar2 = Container(
      height: 75,
      width: 25,
      color: Colors.green[300],
    );

    final bar3 = Container(
      height: 100,
      width: 25,
      color: Colors.green[500],
    );

    final row = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        bar1,
        bar2,
        bar3,
      ],
    );

    return widgetContainer(
      backgroundColor: Colors.black87,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            /// = Groups 1 =====================================================
            // bars have self width and height
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  bar1,
                  bar2,
                  bar3,
                ],
              ),
            ),


            _whiteLineDivider(),


            /// = Groups 2 =====================================================
            // use IntrinsicHeight: height of each bar are same with highest bar
            // (need stretch in this case)
            Expanded(
              child: IntrinsicHeight(
                child: row,
              ),
            ),


            _whiteLineDivider(),


            /// = Groups 3 =====================================================
            // no use IntrinsicHeight: will expand to height of container
            Expanded(
              child: row,
            ),
          ],
        ),
      ),
    );
  }

  Widget _whiteLineDivider() {
    return Container(
      height: double.infinity,
      color: Colors.white,
      width: 2,
    );
  }

}
