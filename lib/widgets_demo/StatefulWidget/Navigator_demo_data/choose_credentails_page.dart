import 'package:flutter/material.dart';

class ChooseCredentialsPage extends StatefulWidget {
  final Function onSignupComplete;

  ChooseCredentialsPage({this.onSignupComplete});

  @override
  _ChooseCredentialsPageState createState() => _ChooseCredentialsPageState();
}

class _ChooseCredentialsPageState extends State<ChooseCredentialsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
//            widget.onSignupComplete?.call();
            Navigator.maybePop(context);
          },
          child: Text('Back'),
        ),
      ),
    );
  }
}
