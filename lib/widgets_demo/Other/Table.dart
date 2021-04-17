import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

tableDemo() {
  return widgetContainer(
    height: null,
    padding: const EdgeInsets.all(8.0),
    child: Center(
      child: Table(
        columnWidths: const <int, TableColumnWidth>{
          0: FixedColumnWidth(80.0),
          1: FixedColumnWidth(80.0),
          2: FixedColumnWidth(80.0),
          3: FixedColumnWidth(80.0),
        },
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        border: TableBorder.all(
            color: Colors.orangeAccent, width: 1.0, style: BorderStyle.solid),
        children: List.generate(3, (index1) => TableRow(
          children: List.generate(4, (index2) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('item $index1 - $index2'),
          )),
        )),
      ),
    ),
  );
}