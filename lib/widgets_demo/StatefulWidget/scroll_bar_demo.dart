import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';

class ScrollBarDemo extends StatefulWidget {
  @override
  _ScrollBarDemoState createState() => _ScrollBarDemoState();
}

class _ScrollBarDemoState extends State<ScrollBarDemo> {
  ScrollController controller;

  @override
  void initState() {
    controller = ScrollController(initialScrollOffset: 0);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: Scrollbar(
        /// FIXME: 有問題
//        isAlwaysShown: true,
//        controller: controller,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 80),
          children: covers.map((c) => Container(
              child: Image.asset(c.imagePath)
          )).toList(),
        ),
      ),
    );
  }
}
