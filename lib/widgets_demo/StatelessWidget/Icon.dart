import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var iconSize = (size.width - 16 * 2) / 8;

    return widgetContainer(
      padding: const EdgeInsets.all(16),
      height: null,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.blue,
                size: iconSize,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              Icon(
                Icons.audiotrack,
                color: Colors.green,
                size: iconSize,
              ),
              Icon(
                Icons.beach_access,
                color: Colors.blue,
                size: iconSize,
              ),
              Icon(
                Icons.settings,
                color: Colors.blueGrey,
                size: iconSize,
              ),
            ],
          ),
          SizedBox(height: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.translate,
                color: Colors.indigo,
                size: iconSize,
              ),
              Icon(
                Icons.security,
                color: Colors.orange,
                size: iconSize,
              ),
              Icon(
                Icons.warning,
                color: Colors.red,
                size: iconSize,
              ),
              Icon(
                Icons.build,
                color: Colors.grey,
                size: iconSize,
              ),
            ],
          ),
        ],
      ),
    );
  }
}