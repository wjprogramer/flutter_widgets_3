import 'package:flutter/material.dart';

class CustomYearPicker extends StatefulWidget {
  @override
  _CustomYearPickerState createState() => _CustomYearPickerState();
}

class _CustomYearPickerState extends State<CustomYearPicker> {
  DateTime _date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      height:150,
      child: YearPicker(
        selectedDate: _date,
        onChanged: (date) => setState(() => _date = date),
        firstDate: DateTime(2018),
        lastDate: DateTime(2030),
      ),
    );
  }
}
