import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomCupertinoDatePicker extends StatefulWidget {
  @override
  _CustomCupertinoDatePickerState createState() =>
      _CustomCupertinoDatePickerState();
}

class _CustomCupertinoDatePickerState extends State<CustomCupertinoDatePicker> {
  DateTime _date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: Column(
        children: <Widget>[
          Text(
            'Current Date: ${_date.toIso8601String()}',
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
          _buildInfoTitle('CupertinoDatePickerMode.dateAndTime'),
          buildPicker(CupertinoDatePickerMode.dateAndTime),
          _buildInfoTitle('CupertinoDatePickerMode.date'),
          buildPicker(CupertinoDatePickerMode.date),
          _buildInfoTitle('CupertinoDatePickerMode.time'),
          buildPicker(CupertinoDatePickerMode.time),
        ],
      ),
    );
  }

  Container buildPicker(CupertinoDatePickerMode mode) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 150,
      child: CupertinoDatePicker(
        mode: mode,
        initialDateTime: DateTime.now(),
//        maximumDate: DateTime(2018,8,8),
//        minimumDate: DateTime(2030,8,8),
        minimumYear: 2018,
        maximumYear: 2030,
        use24hFormat: false,
        minuteInterval: 1,
        backgroundColor: CupertinoColors.white,
        onDateTimeChanged: (date) {
          print(date);
          setState(() => _date = date);
        },
      ),
    );
  }

  Widget _buildInfoTitle(info){
    return    Padding(
      padding: const EdgeInsets.only(left: 20,top: 20,bottom: 5),
      child: Text(
        info,
        style: TextStyle(color: Colors.blue, fontSize: 16,fontWeight: FontWeight.bold),
      ),
    );
  }
}
