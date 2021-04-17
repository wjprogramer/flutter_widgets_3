import 'package:flutter/material.dart';

class CustomLicensePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 400,
      child: LicensePage(
        applicationIcon: FlutterLogo(),
        applicationVersion: 'v0.0.1',
        applicationName: 'Flutter',
        applicationLegalese: 'Copyright© 2018-2020 Hello World',
      ),
    );
  }
}
