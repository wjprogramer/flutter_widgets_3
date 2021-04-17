import 'package:flutter/material.dart';

class MyColors {

  MyColors._internal();

  static const MaterialColor primaryColor = MaterialColor(
    _primaryColorValue,
    <int, Color>{
       50: Color(0xFF000000),
      100: Color(0xFF000000),
      200: Color(0xFF000000),
      300: Color(0xFF000000),
      400: Color(0xFF000000),
      500: Color(_primaryColorValue),
      600: Color(0xFF000000),
      700: Color(0xFF000000),
      800: Color(0xFF000000),
      900: Color(0xFF000000),
    },
  );
  static const int _primaryColorValue = 0xFF000000;

}