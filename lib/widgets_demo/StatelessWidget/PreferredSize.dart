import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomPreferredSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            centerTitle: true,
            leading: SizedBox(),
            title: Text('PreferredSize'),
          ),
        ),
      ),
    );
  }
}
