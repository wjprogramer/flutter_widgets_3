import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';

class CustomDismissible extends StatefulWidget {
  @override
  _CustomDismissibleState createState() => _CustomDismissibleState();
}

class _CustomDismissibleState extends State<CustomDismissible> {

  final _colorData = <Color>[
    Colors.blue[50],
    Colors.blue[100],
    Colors.blue[200],
    Colors.blue[300],
    Colors.blue[400],
    Colors.blue[500],
    Colors.blue[600],
    Colors.blue[700],
    Colors.blue[800],
    Colors.blue[900],
  ];
  
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: ListView(
        children: _colorData.map((color) => _buildItem(color)).toList(),
      ),
    );
  }

  Widget _buildItem(Color color) {
    return Dismissible(
      background: Container(
        color: Colors.green,
        alignment: Alignment(-0.9, 0),
        child: Icon(
          Icons.check,
          color: Colors.white,
        ),
      ),
      secondaryBackground: Container(
        alignment: Alignment(0.9, 0),
        child: Icon(
          Icons.close,
          color: Colors.white,
        ),
        color: Colors.red,
      ),
      key: ValueKey(color),
      onDismissed: (d) {
        _colorData.remove(color);
      },
      confirmDismiss: (e) async {
        if (e == DismissDirection.endToStart) {
          return true;
        } else {
          return false;
        }
      },
      child: Container(
        alignment: Alignment.center,
        height: 50,
        color: color,
        child: Text(
          colorString(color),
          style: TextStyle(color: Colors.white, shadows: [
            Shadow(color: Colors.black, offset: Offset(.5, .5), blurRadius: 2)
          ]),
        ),
      ),
    );
  }


}