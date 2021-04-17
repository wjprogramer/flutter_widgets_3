import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class FittedBoxDemo extends StatefulWidget {
  @override
  _FittedBoxDemoState createState() => _FittedBoxDemoState();
}

class _FittedBoxDemoState extends State<FittedBoxDemo> {
  double _childW = 20;
  double _childH = 30;

  final colors = <Color>[
    Colors.green[200],
    Colors.blue[200],
  ];

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: Column(
        children: <Widget>[
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: BoxFit.values
                .map((mode) => Column(
                    children: <Widget>[
                      _buildChild(mode),
                      SizedBox(
                        height: 10,
                      ),
                      Text(mode.toString().split('.')[1])
                    ],
                  )
                )
                .toList()
          ),
          _buildSlider()
        ],
      ),
    );
  }

  Widget _buildChild(BoxFit m) {
    return Container(
      color: Colors.grey.withAlpha(44),
      width: 80,
      height: 60,
      child: FittedBox(
        fit: m,
        child: Container(
          width: _childW,
          height: _childH,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                stops: <double>[0.0, 1.0],
                colors: colors),
          ),
        ),
      ),
    );
  }

  Widget _buildSlider() => Container(
    margin: const EdgeInsets.only(top: 16),
    decoration: BoxDecoration(
      border: Border(
        top: BorderSide(
          color: Colors.blue[200],
        ),
      ),
    ),
    child: Column(
        children: <Widget>[
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Width'),
              ),
              Expanded(
                child: Slider(
                    min: 10,
                    max: 150,
                    divisions: 100,
                    label: '' + _childW.toStringAsFixed(1),
                    value: _childW,
                    onChanged: (v) => setState(() => _childW = v)),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Height'),
              ),
              Expanded(
                child: Slider(
                    min: 10,
                    max: 150,
                    divisions: 100,
                    label: '' + _childH.toStringAsFixed(1),
                    value: _childH,
                    onChanged: (v) => setState(() => _childH = v)),
              ),
            ],
          ),
        ],
      ),
  );
}
