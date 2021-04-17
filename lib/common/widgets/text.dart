import 'dart:ui';

import 'package:flutter/material.dart';

Widget h1(String text) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    color: Colors.blue[200],
    child: Text(text,
      style: TextStyle(fontSize: 23, color: Colors.white),
    ),
  );
}

Widget h2(String text, {Color color}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    child: Text(text,
      style: TextStyle(fontSize: 20, color: color ?? Colors.blue[600]),
    ),
  );
}

Widget p(String text, {Color backgroundColor}) {
  return Container(
    color: backgroundColor ?? Colors.green[50],
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    child: Text(text,
      style: TextStyle(),
    ),
  );
}