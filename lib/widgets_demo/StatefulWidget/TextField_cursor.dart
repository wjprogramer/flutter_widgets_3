import 'package:flutter/material.dart';

class CursorTextField extends StatefulWidget {
  @override
  _CursorTextFieldState createState() => _CursorTextFieldState();
}

class _CursorTextFieldState extends State<CursorTextField> {
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        _buildSubmitBtn(),
        _buildTextField(context),
      ],
    );
  }

  Container _buildTextField(BuildContext context) {
    return Container(
      width: 300,
      child: TextField(
        style: TextStyle(color: Colors.blue),
        minLines: 3,
        maxLines: 5,
        cursorColor: Colors.green,
        cursorRadius: Radius.circular(3),
        cursorWidth: 5,
        showCursor: true,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "请输入...",
          border: OutlineInputBorder(),
        ),
        onChanged: (v) {},
      ),
    );
  }

  _buildSubmitBtn() => FlatButton(
      color: Colors.blue,
      child: Text(
        "提交",
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
      onPressed: () => FocusScope.of(context).requestFocus(_focusNode));
}
