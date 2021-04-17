import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomCircularProgressIndicator extends StatefulWidget {
  @override
  _CustomCircularProgressIndicatorState createState() =>
      _CustomCircularProgressIndicatorState();
}

class _CustomCircularProgressIndicatorState
    extends State<CustomCircularProgressIndicator> {

  var data = <double>[0.2, 0.4, 0.6, 0.8, null];

  @override
  Widget build(BuildContext context) {

    return widgetContainer(
      child: Center(
        child: Wrap(
          spacing: 10,
          children:data.map((e)=>Container(
            width: 50,
            height: 50,
            child: CircularProgressIndicator(
              value: e,
              backgroundColor: Colors.grey.withAlpha(33),
              valueColor: AlwaysStoppedAnimation(Colors.blue[200]),
              strokeWidth: 5,
            ),
          )).toList(),
        ),
      ),
    );
  }
}
