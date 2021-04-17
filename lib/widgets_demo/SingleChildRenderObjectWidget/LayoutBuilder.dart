import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class LayoutBuilderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: LayoutBuilder(
        builder: (context, zone) {
          return Center(
            child: Text(
              'Parent Size:  ${zone.maxWidth} x ${zone.maxHeight}',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16
              ),
            ),
          );
        },
      ),
    );
  }
}
