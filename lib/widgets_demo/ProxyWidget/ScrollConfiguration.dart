import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';

class CustomScrollConfiguration extends StatelessWidget {
  final data = List.generate(5, (index) => Colors.blue[100 * (index + 1)]);

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: 200,
      child: ScrollConfiguration(
          behavior: NoScrollBehavior(), child: _buildListView()),
    );
  }

  Widget _buildListView() => ListView(
    children: data.map((color) => Container(
      alignment: Alignment.center,
      width: 100,
      height: 50,
      color: color,
      child: Container(
        color: Colors.black54,
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
        child: Text(
          colorString(color),
          style: TextStyle(color: Colors.white,),
        ),
      ),
    ))
        .toList(),
  );
}

class NoScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) =>
      child;
}