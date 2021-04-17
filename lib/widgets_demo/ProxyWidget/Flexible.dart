import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class FlexibleDemo extends StatefulWidget {
  @override
  _FlexibleDemoState createState() => _FlexibleDemoState();
}

class _FlexibleDemoState extends State<FlexibleDemo> {
  double _width = 300.0;
  bool _loose = false;

  @override
  Widget build(BuildContext context) {

    final redBoxFlex = 2;
    final redBox = _getBox(
      color: Colors.red, flex: redBoxFlex,
    );

    final blueBoxFlex = 3;
    final blueBox = _getBox(
      color: Colors.blue, flex: blueBoxFlex,
    );

    final greenBoxFlex = 4;
    final greenBox = Container(
      constraints: BoxConstraints(maxWidth: 60),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: 50,
      color: Colors.green,
      child: Text(
        'flex=$greenBoxFlex \nfit=${_loose?'loose':'tight'}',
        style: TextStyle(color: Colors.white),
      ),
    );

    return _container(
      child: Row(
        children: <Widget>[
          Flexible(
            flex: redBoxFlex,
            child: redBox,
          ),
          Flexible(
            flex: blueBoxFlex,
            child: blueBox,
          ),
          Flexible(
            flex: greenBoxFlex,
            fit: _loose ? FlexFit.loose:FlexFit.tight,
            child: greenBox,
          )
        ],
      ),
    );
  }

  Widget _container({ Widget child }) {
    return widgetContainer(
      bottomPanel: _buildOp(),
      child: Center(
        child: Container(
          margin: const EdgeInsets.only(bottom: 50),
          color: Colors.grey.withAlpha(33),
          width: _width,
          padding: EdgeInsets.all(8.0),
          child: child),
      ),
    );
  }

  Widget _getBox({
    int flex,
    bool loose,
    Color color = Colors.red,
  }) {
    var msg = 'flex=$flex';
    if (loose != null) {
      msg += '\nfit=${loose?'loose':'tight'}';
    }

    return Container(
      alignment: Alignment.center,
      height: 50,
      color: color,
      child: Text(
        msg,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _buildOp() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Slider(
              divisions: 10,
              min: 200,
              max: 350,
              value: _width,
              onChanged: (v) => setState(() => _width = v)),
        ),
        Switch(
            value: _loose,
            onChanged: (v) => setState(() => _loose = v)),
      ],
    );
  }
}
