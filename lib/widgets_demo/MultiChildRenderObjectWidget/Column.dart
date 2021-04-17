import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

columnDemo(BuildContext context) {
  return widgetContainer(
    child: SingleChildScrollView(
      child: Column(
        children: _data,
      ),
    ),
  );
}

var _data = List.generate(20, (index) => Row(
  children: [
    Expanded(
      child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              color: index % 2 == 0
                  ? Colors.green[200]
                  : Colors.green[100],
              border: Border(
                bottom: BorderSide(
                  color: Colors.white,
                ),
              )
          ),
          child: Text('Item $index')
      ),
    ),
  ],
));