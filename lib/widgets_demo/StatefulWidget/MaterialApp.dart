import 'package:flutter/material.dart';
import 'Scaffold.dart';

class CustomMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 200,
      child: MaterialApp(
        title: 'Flutter Demo',
//        onGenerateRoute: Router.generateRoute,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CustomScaffold(),
      ),
    );
  }
}
