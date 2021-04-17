import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

buttonThemeDemo({BuildContext context}) {
  return widgetContainer(
    height: null,
    child: ButtonTheme(
      buttonColor: Colors.green[400],
      splashColor: Colors.blue[400],
      minWidth: 40,
      shape: CircleBorder(
        side: BorderSide(width: 2.0, color: Color(0xFFFFDFDFDF)),
      ),
      child: _content(),
    ),
  );
}

_content() {
  return Center(
    child: Wrap(
      spacing: 10,
      children: <Widget>[
        RaisedButton(onPressed: (){}, child: Icon(Icons.add)),
        FlatButton(onPressed: (){}, child: Icon(Icons.add)),
        OutlineButton(onPressed: (){}, child: Icon(Icons.add)),
        MaterialButton(onPressed: (){}, child: Icon(Icons.add)),
      ],
    ),
  );
}