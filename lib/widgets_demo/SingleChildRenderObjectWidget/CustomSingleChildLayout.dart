import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomSingleChildLayoutDemo extends StatefulWidget {
  @override
  _CustomSingleChildLayoutDemoState createState() => _CustomSingleChildLayoutDemoState();
}

class _CustomSingleChildLayoutDemoState extends State<CustomSingleChildLayoutDemo> {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: Center(
        child: CustomSingleChildLayout(
          delegate: FixedSizeLayoutDelegate(Size(100.0, 100.0)),
          child: Container(
            color: Colors.blue[300],
            width: 100.0,
            height: 100.0,
          ),
        ),
      ),
    );
  }
}

class FixedSizeLayoutDelegate extends SingleChildLayoutDelegate {
  FixedSizeLayoutDelegate(this.size);

  final Size size;

  @override
  Size getSize(BoxConstraints constraints) => size;

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return new BoxConstraints.tight(size);
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    return super.getPositionForChild(size, childSize);
  }

  @override
  bool shouldRelayout(FixedSizeLayoutDelegate oldDelegate) {
    return size != oldDelegate.size;
  }
}
