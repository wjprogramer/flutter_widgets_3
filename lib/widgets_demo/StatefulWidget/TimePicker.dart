import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomTimePicker extends StatefulWidget {
  @override
  _CustomTimePickerState createState() => _CustomTimePickerState();
}

class _CustomTimePickerState extends State<CustomTimePicker> {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
        child: Center(
          child: RaisedButton(
            onPressed: () async {
              final timeOfDay = await showTimePicker(
                  context: context, initialTime: TimeOfDay.now());

              debugPrint('$timeOfDay');
            },
            child: Text('showTimePicker'),
          ),
        )
    );
  }
}
