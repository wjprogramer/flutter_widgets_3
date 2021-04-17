import 'package:flutter/material.dart';

class ShapeRawMaterialButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        spacing: 20,
        children: <Widget>[
          RawMaterialButton(
            elevation: 2,
            shape:  CircleBorder(
              side: BorderSide(width: 2.0, color: Color(0xFFFFDFDFDF)),
            ),
            fillColor: Colors.green,
            splashColor: Colors.orange,
            textStyle: TextStyle(color: Colors.white),
            onLongPress: ()=>print('onLongPress'),
            child: Icon(Icons.remove),
            onPressed: ()=>print('onPressed'),
          ),
          RawMaterialButton(
            shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            elevation: 0,
            highlightElevation: 0,
            fillColor: Colors.blue,
            splashColor: Colors.orange,
            textStyle: TextStyle(color: Colors.white),
            onLongPress: ()=>print('onLongPress'),
            child: Text('Push'),
            onPressed: ()=>print('onPressed'),
          ),
          RawMaterialButton(
            elevation: 2,
            shape:  CircleBorder(
              side: BorderSide(width: 2.0, color: Color(0xFFFFDFDFDF)),
            ),
            fillColor: Colors.red,
            splashColor: Colors.orange,
            textStyle: TextStyle(color: Colors.white),
            onLongPress: ()=>print('onLongPress'),
            child: Icon(Icons.add),
            onPressed: ()=>print('onPressed'),
          ),

        ],
      ),
    );
  }
}