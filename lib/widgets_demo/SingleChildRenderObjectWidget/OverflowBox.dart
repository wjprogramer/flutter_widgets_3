import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class OverflowBoxDemo extends StatefulWidget {
  @override
  _OverflowBoxDemoState createState() => _OverflowBoxDemoState();
}

class _OverflowBoxDemoState extends State<OverflowBoxDemo> {

  @override
  Widget build(BuildContext context) {

    var _text = 'Hello World ... Hello World ... Hello World ... Hello World ...　Hello World ... Hello World ...　Hello World ... Hello World ...　Hello World ... Hello World ...　Hello World ... Hello World ...　Hello World ... Hello World ...　Hello World ... Hello World ...　Hello World ... Hello World ...';

    var box = OverflowBox(
      alignment: Alignment.center,
      minHeight: 50,
      minWidth: 50,
      maxWidth: 200,
      maxHeight: 120,
      child: Container(
        color: Colors.orange.withOpacity(0.3),
        child: Text(_text),
      ),
    );

    return widgetContainer(
      height: null,
      child: Column(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 32),
              color: Colors.blue,
              width: 100,
              height: 100,
              child: box
            ),
          ),
          _buildCheckBox(),
        ],
      ),
    );
  }

  Widget _buildCheckBox() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.blue[200],
          ),
        ),
      ),
      child: Wrap(
        children: [

        ],
      ),
    );
  }

}
