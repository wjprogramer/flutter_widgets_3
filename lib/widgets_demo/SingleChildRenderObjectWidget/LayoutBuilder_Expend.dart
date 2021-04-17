import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class LayoutBuilderWithTextPainterDemo extends StatefulWidget {

  @override
  createState() => _LayoutBuilderWithTextPainterDemoState();
}

class _LayoutBuilderWithTextPainterDemoState extends State<LayoutBuilderWithTextPainterDemo> {

  final text = r'''
    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
  ''';

  bool expand = false;
  int maxLines = 3;


  final style = TextStyle(fontSize: 15, color: Colors.grey, shadows: [
    Shadow(
        color: Colors.white, offset: Offset(1,1)
    )
  ]);

  @override
  build(context) => widgetContainer(
    height: null,
    child: Container(
      decoration: BoxDecoration(
          color: Colors.cyanAccent.withAlpha(8),
          borderRadius: BorderRadiusDirectional.all(Radius.circular(20))),
      padding: EdgeInsets.all(15),
      child: LayoutBuilder(builder: (context, size) {

        final painter = TextPainter(
          text: TextSpan(text: text, style: style),
          maxLines: maxLines,
          textDirection: TextDirection.ltr,
        );
        painter.layout(maxWidth: size.maxWidth);

        if (!painter.didExceedMaxLines)
          return Text(text, style: style);

        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(text, maxLines: expand ? null : 3, style: style),
            GestureDetector(
              onTap: () => setState(() {
                  expand = !expand;
                }),
              child: Text(
                expand ? '<< Collapse' : 'Expand >>',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        );
      }),
    ),
  );
}

