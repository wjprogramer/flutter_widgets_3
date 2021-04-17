import 'package:flutter/material.dart';

class CustomSelectableText extends StatelessWidget {
  final text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.";

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      text,
      style: TextStyle(fontSize: 18, color: Colors.orange),
      cursorColor: Colors.green,
      cursorRadius: Radius.circular(3),
      cursorWidth: 5,
      showCursor: true,
      autofocus: false,
    );
  }
}
