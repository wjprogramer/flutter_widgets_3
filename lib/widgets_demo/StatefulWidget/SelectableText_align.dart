import 'package:flutter/material.dart';

class AlignSelectableText extends StatefulWidget {
  @override
  _AlignSelectableTextState createState() => _AlignSelectableTextState();
}

class _AlignSelectableTextState extends State<AlignSelectableText> {
  final text =
      "The [SelectableText] widget displays a string of text with a single style."
      "The string might break across multiple lines or might all be displayed on"
      "the same line depending on the layout constraints.";
  var _textAlign = TextAlign.left;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildSelector(),
        SelectableText(
          text,
          style: TextStyle(fontSize: 18, color: Colors.red),
          cursorColor: Colors.green,
          cursorRadius: Radius.circular(3),
          cursorWidth: 5,
          showCursor: true,
          textAlign: _textAlign,
          textDirection: TextDirection.ltr,

          autofocus: false,
        ),
      ],
    );
  }

  Widget _buildSelector() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          "textAlign属性选择:",
          style: TextStyle(
              fontSize: 16, color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        DropdownButton<TextAlign>(
            underline: Container(),
            value: _textAlign,
            items: TextAlign.values
                .map((e) => DropdownMenuItem<TextAlign>(
                      value: e,
                      child: Text(e.toString()),
                    ))
                .toList(),
            onChanged: (e) {
              setState(() {
                _textAlign = e;
              });
            }),
      ],
    );
  }
}
