import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

errorWidgetDemo() {
  return widgetContainer(
    child: ErrorWidget(
      'I am ErrorWidget\n'
        'But now, there has no error.'
    ),
  );
}