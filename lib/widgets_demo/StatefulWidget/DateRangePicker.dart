import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomDateRangePicker extends StatefulWidget {
  @override
  _CustomDateRangePickerState createState() => _CustomDateRangePickerState();
}

class _CustomDateRangePickerState extends State<CustomDateRangePicker> {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: Center(
        child: RaisedButton(
          onPressed: () async {
            final range = await showDateRangePicker(
                context: context,
                firstDate: DateTime(2020, 01),
                lastDate: DateTime(2100, 12));

            debugPrint(range.toString());
          },
          child: Text('showDateRangePicker'),
        ),
      )
    );
  }
}
