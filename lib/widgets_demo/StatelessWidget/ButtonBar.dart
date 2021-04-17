import 'package:flutter/material.dart';
//import '../../../dialogs/dialog_about.dart';

//  這個頁面的onPressed原本都是長這樣
//            onPressed: () => DialogAbout.show(context),
class CustomButtonBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      buttonHeight: 40,
      buttonPadding: EdgeInsets.only(left: 15,right: 15),
      children: <Widget>[
        RaisedButton(
            color: Colors.blue,
            child: Text("Raised"),
            onPressed: () => {}
        ),
        OutlineButton(
            child: Text("Outline"),
            onPressed: () => {}
        ),
        FlatButton(
          color: Colors.blue,
          onPressed: () => {},
          child: Text("Flat"),
        )
      ],
    );
  }
}

