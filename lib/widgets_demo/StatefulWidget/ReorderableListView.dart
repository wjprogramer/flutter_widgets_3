import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';

class CustomReorderableListView extends StatefulWidget {
  @override
  _CustomReorderableListViewState createState() => _CustomReorderableListViewState();
}

class _CustomReorderableListViewState extends State<CustomReorderableListView> {
  var data = <Color>[
    Colors.yellow[50],
    Colors.yellow[100],
    Colors.yellow[200],
    Colors.yellow[300],
    Colors.yellow[400],
    Colors.yellow[500],
    Colors.yellow[600],
    Colors.yellow[700],
    Colors.yellow[800],
    Colors.yellow[900],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ReorderableListView(
        padding: EdgeInsets.all(10),
        header: Container(
          color: Colors.blue,
          alignment: Alignment.center,
            height: 50,
            child: Text('长按拖拽进行换位',style: TextStyle(color: Colors.white),)),
        onReorder: _handleReorder,
        children: data.map((color) => _buildItem(color)).toList(),
      ),
    );
  }

  void _handleReorder(int oldIndex, int newIndex) {
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }

    setState(() {
      final element = data.removeAt(oldIndex);
      data.insert(newIndex, element);
    });

  }

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