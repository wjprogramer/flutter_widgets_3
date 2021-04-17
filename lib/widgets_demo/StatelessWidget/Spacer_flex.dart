import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class ManySpacer extends StatefulWidget {
  @override
  _ManySpacerState createState() => _ManySpacerState();
}

class _ManySpacerState extends State<ManySpacer> {
  int _flexA=1;
  int _flexB=1;

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: Column(
        children: <Widget>[
          _buildSliders(),
          Container(
            color: Colors.grey.withAlpha(33),
            child: Row(children: <Widget>[
              Spacer(flex: _flexA),
              Container(
                alignment: Alignment.center,
                width: 100,
                height: 50,
                color: Colors.red,
              ),
              Spacer(flex: _flexB),
              Container(
                alignment: Alignment.center,
                width: 60,
                height: 50,
                color: Colors.blue,
              ),
            ],),
          )
        ],
      ),
    );
  }

  Widget _buildSliders() {
    return Column(
      children: <Widget>[
        Slider(
            divisions: 20,
            min: 1,
            max: 10,
            label: "左邊flex: $_flexA",
            value: _flexA.toDouble(),
            onChanged: (v) => setState(() => _flexA = v.round())
        ),
        Slider(
            divisions: 20,
            label: "右邊flex: $_flexB",
            min: 1,
            max: 10,
            value: _flexB.toDouble(),
            onChanged: (v) => setState(() => _flexB = v.round())
        ),
      ],
    );
  }
}