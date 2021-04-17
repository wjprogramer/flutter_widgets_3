import 'package:flutter/material.dart';

class Matrix4Shower extends StatelessWidget {
  final Matrix4 matrix4;

  final List<int> highlightIndices;

  Matrix4Shower(this.matrix4, {
    this.highlightIndices = const [],
  });

  @override
  Widget build(BuildContext context) {
    var str = '';
    var spans = <TextSpan>[];

    var normalStyle = TextStyle(
      color: Colors.grey.withOpacity(0.5),
      fontSize: 20,
    );

    var hlStyle = TextStyle(
      color: Colors.grey,
      fontSize: 20,
    );

    for (int r = 0; r < 4; r++) {
      for (int c = 0; c < 4; c++) {

        var v = r * 4 + c;

        if (highlightIndices.contains(r * 4 + c)) {
          if (str.isNotEmpty) {
            spans.add(TextSpan(
              text: str,
              style: normalStyle,
            ));
          }

          str = '${matrix4.entry(r, c).toStringAsFixed(1)},';
          spans.add(TextSpan(
            text: str,
            style: hlStyle,
          ));
          str = '';

        } else {
          str += '${matrix4.entry(r, c).toStringAsFixed(1)},';
        }
      }

      if (r != 3) {
        str += '\n';
      }
    }

    if (str.isNotEmpty) {
      spans.add(TextSpan(
        text: str,
        style: normalStyle,
      ));
    }

    return Text.rich(
      TextSpan(
        children: spans,
      ),
    );
  }
}