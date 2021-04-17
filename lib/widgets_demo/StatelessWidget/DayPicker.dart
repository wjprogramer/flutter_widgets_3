import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomDayPicker extends StatefulWidget {
  @override
  _CustomDayPickerState createState() => _CustomDayPickerState();
}

class _CustomDayPickerState extends State<CustomDayPicker> {

  DateTime _date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: 350,
      child: DayPicker(
          selectedDate: _date,
          currentDate: DateTime.now(),
          onChanged: (date){
           setState(() => _date = date);
          },
          firstDate:  DateTime(2018),
          lastDate: DateTime(2030),
          displayedMonth: DateTime.now()
      ),
    );
  }
}
