import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class FractionallySizedBoxDemo extends StatefulWidget {
  @override
  _FractionallySizedBoxDemoState createState() =>
      _FractionallySizedBoxDemoState();
}

class _FractionallySizedBoxDemoState
    extends State<FractionallySizedBoxDemo> {
  var _hf = 0.5;
  var _wf = 0.4;

  @override
  Widget build(BuildContext context) {
    var box = FractionallySizedBox(
      widthFactor: _wf,
      heightFactor: _hf,
      alignment: Alignment.center,
      child: Container(color: Colors.green[200]),
    );

    return widgetContainer(
      height: null,
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.grey.withAlpha(22),
            width: 200,
            height: 100,
            child: box,
          ),
          _buildSlider()
        ],
      ),
    );
  }

  Widget _buildSlider() => Container(
    margin: const EdgeInsets.only(top: 16,),
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
              child: Text('Width Factor'),
            ),
            Expanded(
              child: Slider(
                  divisions: 20,
                  min: 0.0,
                  max: 2,
                  label: _wf.toStringAsFixed(1),
                  value: _wf,
                  onChanged: (v) => setState(() => _wf = v)),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Height Factor'),
            ),
            Expanded(
              child: Slider(
                divisions: 20,
                min: 0.0,
                max: 2,
                label: _hf.toStringAsFixed(1),
                value: _hf,
                onChanged: (v) => setState(() => _hf = v)
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
