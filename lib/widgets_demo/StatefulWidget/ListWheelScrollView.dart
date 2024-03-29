import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';

class CustomListWheelScrollView extends StatefulWidget {
  @override
  _CustomListWheelScrollViewState createState() => _CustomListWheelScrollViewState();
}

class _CustomListWheelScrollViewState extends State<CustomListWheelScrollView> {
  var data = <Color>[
    Colors.orange[50],
    Colors.orange[100],
    Colors.orange[200],
    Colors.orange[300],
    Colors.orange[400],
    Colors.orange[500],
    Colors.orange[600],
    Colors.orange[700],
    Colors.orange[800],
    Colors.orange[900],
  ];

  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildCircle(),
        Container(
          height: 150,
          width: 300,
          child: ListWheelScrollView(
            perspective: 0.006,
            itemExtent: 50,
            onSelectedItemChanged: (index){
              print('onSelectedItemChanged:$index');
              setState(() => _color=data[index]);
            },
            children: data.map((color) => _buildItem(color)).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildCircle() => Container(
        margin: EdgeInsets.only(bottom: 5),
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: _color,
          shape: BoxShape.circle
        ),
      );

  Widget _buildItem(Color color) {
    return Container(
      key: ValueKey(color)  ,
      alignment: Alignment.center,
      height: 50,
      color: color,
      child: Text(
        colorString(color),
        style: TextStyle(color: Colors.white, shadows: [
          Shadow(color: Colors.black, offset: Offset(.5, .5), blurRadius: 2)
        ]),
      ),
    );
  }


}
