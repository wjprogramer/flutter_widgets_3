import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';


class CustomCupertinoTimerPicker extends StatefulWidget {
  @override
  _CustomCupertinoTimerPickerState createState() =>
      _CustomCupertinoTimerPickerState();
}

class _CustomCupertinoTimerPickerState
    extends State<CustomCupertinoTimerPicker> {
  Duration _date = Duration(seconds: 30);

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: Column(
        children: <Widget>[
          Text(
            'Current Time: ${_date.toString()}',
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
          _buildInfoTitle('CupertinoTimerPickerMode.hms'),
          buildPicker(CupertinoTimerPickerMode.hms),
          _buildInfoTitle('CupertinoTimerPickerMode.hm'),
          buildPicker(CupertinoTimerPickerMode.hm),
          _buildInfoTitle('CupertinoTimerPickerMode.ms'),
          buildPicker(CupertinoTimerPickerMode.ms),
        ],
      ),
    );
  }

  Widget _buildInfoTitle(info) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20, bottom: 5),
      child: Text(
        info,
        style: TextStyle(
            color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget buildPicker(CupertinoTimerPickerMode mode) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 150,
      child: CupertinoTimerPicker(
        mode: mode,
        initialTimerDuration: Duration(seconds: 30),
        onTimerDurationChanged: (date) {
          print(date);
          setState(() => _date = date);
        },
      ),
    );
  }
}
