import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class SoftWrapText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      padding: const EdgeInsets.all(8.0),
      height: null,
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: TextOverflow.values
          .map((e) => Column(
            children: <Widget>[
              Container(
                width: 150,
                color: Colors.cyanAccent.withAlpha(33),
                height: 150 * 0.618 * 0.618,
                child: Text(" Hello World Artist " * 5,
                    overflow: e,
                    softWrap: false),
              ),
              Text(e.toString().split('.')[1]),
            ],
          )).toList(),
      ),
    );
  }
}
