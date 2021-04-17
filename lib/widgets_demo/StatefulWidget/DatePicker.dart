import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomDatePicker extends StatefulWidget {
  @override
  _CustomDatePickerState createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: Center(
        child: RaisedButton(
          onPressed: () async {
            final result = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2020, 01),
              lastDate: DateTime(2100, 12)
            );

            debugPrint(result.toString());
          },
          child: Text('showDatePicker'),
        ),
      )
    );
  }
}
