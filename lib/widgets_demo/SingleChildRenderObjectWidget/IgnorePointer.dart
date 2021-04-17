import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';
import 'package:flutter_widgets_3/common/my_logger.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Text_textAlign.dart';

class CustomIgnorePointer extends StatefulWidget {
  @override
  _CustomIgnorePointerState createState() => _CustomIgnorePointerState();
}

class _CustomIgnorePointerState extends State<CustomIgnorePointer> {
  bool _ignore = false;

  String _message = 'Click Me';

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                _updateMessage('Click on parent of `IgnorePointer`');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IgnorePointer(
                    ignoring: _ignore,
                    child: _buildButton(),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                    ),
                    constraints: BoxConstraints(
                      minWidth: 300,
                    ),
                    child: Text(
                      'Or Click Me',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 4,
                  child: _buildSwitch(),
                ),
                Expanded(
                  flex: 5,
                  child: Text(!_ignore ? 'Allow click button' : 'Ignore button'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildButton() => Container(
    constraints: BoxConstraints(
      minWidth: 300,
    ),
    child: RaisedButton(
      color: Theme.of(context).primaryColor,
      child: Container(
        child: Text(
          _message,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      onPressed: () {
        _updateMessage('Click on button');
      }
    ),
  );

  Widget _buildSwitch() => Align(
    alignment: Alignment.centerRight,
    child: Switch(
      value: _ignore,
      onChanged: (v) {
        setState(() {
          _ignore = v;
        });
      }
    ),
  );

  void _updateMessage(String message) {
    MyLogger.info('IgnorePointer', message);
    setState(() {
      _message = message;
    });
  }

}
