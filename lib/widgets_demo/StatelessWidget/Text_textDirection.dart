import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class TextDirectionText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 40,
        runSpacing: 10,
        children: TextDirection.values
            .map((e) => Column(
              children: <Widget>[
                Container(
                  width: 120,
                  color: Colors.cyanAccent.withAlpha(33),
                  height: 120 * 0.618,
                  child: Text(
                        " Hello World Artist " * 10,
                        textDirection: e,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(e.toString().split('.')[1]),
              ],
            ))
            .toList(),
      ),
    );
  }
}