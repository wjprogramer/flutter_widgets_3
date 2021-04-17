import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';

class DirectionDismissible extends StatefulWidget {
  @override
  _CustomDirectionDismissibleState createState() => _CustomDirectionDismissibleState();
}

class _CustomDirectionDismissibleState extends State<DirectionDismissible> {
  var data = <Color>[
    Colors.purple[50],
    Colors.purple[100],
    Colors.purple[200],
    Colors.purple[300],
    Colors.purple[400],
    Colors.purple[500],
    Colors.purple[600],
    Colors.purple[700],
    Colors.purple[800],
    Colors.purple[900],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 5),
        children: data.map((color) => _buildItem(color)).toList(),
      ),
    );
  }

  Widget _buildItem(Color color) {
    return Dismissible(
      direction: DismissDirection.vertical,
      background: Container(
        color: Colors.green,
        alignment: Alignment( 0,-0.9,),
        child: Icon(
          Icons.check,
          color: Colors.white,
        ),
      ),
      crossAxisEndOffset: 0.5,
      secondaryBackground: Container(
        alignment: Alignment( 0,0.9,),
        child: Icon(
          Icons.close,
          color: Colors.white,
        ),
        color: Colors.red,
      ),
      key: ValueKey(color),
      onDismissed: (d) {
        data.remove(color);
      },
      confirmDismiss: (e) async {
        print(e);
        if (e == DismissDirection.up) {
          return true;
        } else {
          return false;
        }
      },
      child: Container(
        alignment: Alignment.center,
        width: 80,
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