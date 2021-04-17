import 'package:flutter/material.dart';

class CustomMonthPicker extends StatefulWidget {
  @override
  _CustomMonthPickerState createState() => _CustomMonthPickerState();
}

class _CustomMonthPickerState extends State<CustomMonthPicker> {
  DateTime _date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: MonthPicker(
        selectedDate: _date,
        onChanged: (date) => setState(() => _date = date),
        firstDate: DateTime(2018),
        lastDate: DateTime(2030),
      ),
    );
  }
}
