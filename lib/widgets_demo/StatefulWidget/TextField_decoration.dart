import 'package:flutter/material.dart';

class ComplexTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurpleAccent),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))),
      labelText: 'username',
      labelStyle: TextStyle(color: Colors.purple),
      helperText: "help me",
      helperStyle: TextStyle(color: Colors.blue),

      suffixText: "suffix",
      suffixIcon: Icon(Icons.done),
      suffixStyle: TextStyle(color: Colors.green),

      counterText: "counter",
      counterStyle: TextStyle(color: Colors.orange),

      prefixText: "ID  ",
      prefixStyle: TextStyle(color: Colors.blue),
      prefixIcon: Icon(Icons.language),

      fillColor: Color(0x110099ee),
      filled: true,

      //  errorText: "error",
      //  errorMaxLines: 1,
      //  errorStyle: TextStyle(color: Colors.red),
      //  errorBorder: UnderlineInputBorder(),

      hintText: "请输入用户名",
      hintMaxLines: 1,
      hintStyle: TextStyle(color: Colors.black38),
      icon: Icon(Icons.assignment_ind),
    ));
  }
}
