import 'package:flutter/material.dart';

class CollectPersonalInfoPage extends StatefulWidget {
  @override
  _CollectPersonalInfoPageState createState() => _CollectPersonalInfoPageState();
}

class _CollectPersonalInfoPageState extends State<CollectPersonalInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('signup/choose_credentials');
          },
          child: Text('Go'),
        ),
      ),
    );
  }
}
