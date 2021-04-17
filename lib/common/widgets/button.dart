import 'package:flutter/material.dart';

Widget button({
  Function onPressed, String text, Widget page, BuildContext context,
  Color textColor,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: TextButton(
      onPressed: () {
        if (onPressed != null) {
          onPressed();
        }
        if (page != null && context != null) {
          Navigator.push(context, MaterialPageRoute(
              builder: (ctx) => page
          ));
        }
      },
      child: Align(
          alignment: Alignment.centerLeft,
          child: Text(text,
            style: TextStyle(
              color: textColor ?? Colors.black,
            ),
          )
      ),
    ),
  );
}