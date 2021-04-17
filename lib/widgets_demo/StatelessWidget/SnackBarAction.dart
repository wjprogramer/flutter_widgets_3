import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomSnackBarAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
        height: null,
        child: Center(
          child: SnackBarAction(
              disabledTextColor: Colors.red,
              textColor: Colors.blue,
              label: '确定',
              onPressed: () => print('onPressed')
          ),
        )
    );
  }
}
