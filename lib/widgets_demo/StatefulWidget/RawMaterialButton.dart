import 'package:flutter/material.dart';

class CustomRawMaterialButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        spacing: 20,
        children: <Widget>[
          RawMaterialButton(
            elevation: 2,
            fillColor: Colors.green,
            splashColor: Colors.orange,
            textStyle: TextStyle(color: Colors.white),
            onLongPress: ()=>print('onLongPress'),
            child: Icon(Icons.remove),
            onPressed: ()=>print('onPressed'),
          ),
          RawMaterialButton(
            elevation: 2,
            fillColor: Colors.blue,
            splashColor: Colors.orange,
            textStyle: TextStyle(color: Colors.white),
            onLongPress: ()=>print('onLongPress'),
            child: Text('Push'),
            onPressed: ()=>print('onPressed'),
          ),
          RawMaterialButton(
            elevation: 2,
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