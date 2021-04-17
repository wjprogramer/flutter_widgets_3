import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

expandedDemo() {
  return widgetContainer(
    height: null,
      child: Row(
        children: List.generate(4, (index) => Expanded(
          flex: index,
          child: Container(
            alignment: Alignment.center,
            width: 50,
            height: 50,
            color: index % 2 == 0
                ? Colors.blueGrey
                : Colors.blueGrey[400],
            child: Text('$index', style: TextStyle(color: Colors.white),),
          ),
        )),
      )
  );
}