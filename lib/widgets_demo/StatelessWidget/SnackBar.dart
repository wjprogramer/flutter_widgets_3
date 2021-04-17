import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomSnackBar extends StatefulWidget {
  @override
  _CustomSnackBarState createState() => _CustomSnackBarState();
}

class _CustomSnackBarState extends State<CustomSnackBar> {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: Center(
        child: FlatButton(
            color: Colors.blue,
            onPressed: () =>
                Scaffold.of(context).showSnackBar(_buildSnackBar()),
            child: Text(
              '點我彈出SnackBar',
              style: TextStyle(color: Colors.white),
            )),
      ));
  }

  Widget _buildSnackBar() {
    return SnackBar(
      elevation: 3,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      content: Text('Welcome'),
      duration: Duration(seconds: 3),
      backgroundColor: Colors.blue[200],
      onVisible: () => print('onVisible'),
      action: SnackBarAction(
          textColor: Colors.white, label: '確定', onPressed: () {}),
    );
  }
}
