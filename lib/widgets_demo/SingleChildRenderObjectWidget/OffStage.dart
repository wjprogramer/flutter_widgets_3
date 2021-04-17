import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class OffstageDemo extends StatefulWidget {
  @override
  _OffstageDemoState createState() => _OffstageDemoState();
}

class _OffstageDemoState extends State<OffstageDemo> {

  bool _offstage = false;

  @override
  Widget build(BuildContext context) {
    var box = Container(
      height: 50,
      width: 60,
      color: Colors.green[200],
    );

    return widgetContainer(
      height: null,
      child: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  box,
                  _buildOffStage(),
                  box,
                ],
              ),
            ),
            _buildSwitch(),
          ],
        ),
      ),
    );
  }

  Widget _buildOffStage() => Offstage(
      offstage: _offstage,
      child: Container(
        alignment: Alignment.center,
        height: 100,
        width: 100,
        color: Colors.blue[200],
        child: Text(
          "Offstage",
          style: TextStyle(fontSize: 20),
        ),
      ));

  Widget _buildSwitch() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.blue[200],
          ),
        )
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Offstage: $_offstage'),
            ),
          ),
          Switch(
              value: _offstage,
              onChanged: (v) => setState(() => _offstage = v)
          ),
        ],
      ),
    );
  }
}
