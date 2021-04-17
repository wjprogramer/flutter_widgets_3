import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';

class CustomExpansionPanelList extends StatefulWidget {
  @override
  _CustomExpansionPanelListState createState() =>
      _CustomExpansionPanelListState();
}

class _CustomExpansionPanelListState extends State<CustomExpansionPanelList> {
  var data = <Color>[
    Colors.red[50],
    Colors.red[100],
    Colors.red[200],
    Colors.red[300],
    Colors.red[400],
    Colors.red[500],
    Colors.red[600],
    Colors.red[700],
    Colors.red[800],
    Colors.red[900],
  ];
  int _position = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: ExpansionPanelList(
        children: data.map((color) => _buildItem(color)).toList(),
        animationDuration: Duration(milliseconds: 200),
        expansionCallback: (index, open) {
          setState(() => _position=open?-1:index);
        },
      ),
    );
  }

  ExpansionPanel _buildItem(Color color) {
    return ExpansionPanel(
        isExpanded: data.indexOf(color) == _position,
        canTapOnHeader: true,
        headerBuilder: (ctx, index) => Center(
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: <Widget>[
                  Container(
                    height: 30,
                    width: 30,
                    decoration:
                        BoxDecoration(color: color, shape: BoxShape.circle),
                  ),
                  Container(
                    width: 120,
                    alignment: Alignment.center,
                    height: 50,
                    child: Text(
                      colorString(color),
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
        body: Container(
          alignment: Alignment.center,
          height: 50,
          color: color,
          child: Text(
            colorString(color),
            style: TextStyle(color: Colors.white, shadows: [
              Shadow(color: Colors.black, offset: Offset(.5, .5), blurRadius: 2)
            ]),
          ),
        ));
  }


}
