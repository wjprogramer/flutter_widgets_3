import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';
import 'package:flutter_widgets_3/common/my_logger.dart';

class AbsorbPointerDemo extends StatefulWidget {
  @override
  _AbsorbPointerDemoState createState() => _AbsorbPointerDemoState();
}

class _AbsorbPointerDemoState extends State<AbsorbPointerDemo> {

  bool _absorbing = false;

  var _msgOnButton = 'Click Me';

  @override
  Widget build(BuildContext context) {
    return _container(
      children: [
        GestureDetector(
          onTap: () {
            _updateMsgButton('Click on top');
          },
          child: AbsorbPointer(
            absorbing: _absorbing,
            child: _buildButton(),
          ),
        ),
        _info(),
      ]
    );
  }

  Widget _container({ List<Widget> children }) {
    return widgetContainer(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: children,
        ),
      ),
    );
  }

  void _updateMsgButton(String message) {
    setState(() {
      _msgOnButton = message;
    });
  }

  Widget _buildButton() => RaisedButton(
    color: Theme.of(context).primaryColor,
    child: Text(
      _msgOnButton,
      style: TextStyle(color: Colors.white),
    ),
    onPressed: () {
      _updateMsgButton('Click on button');
    }
  );

  Widget _info() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: _buildSwitch(),
          ),
        ),
        Expanded(
          child: Text(!_absorbing ? 'Allow Click' : 'Absorb Pointer'),
        ),
      ],
    );
  }

  _buildSwitch() => Switch(
    value: _absorbing,
    onChanged: (v) {
      setState(() {
        _absorbing = v;
      });
    }
  );
}
