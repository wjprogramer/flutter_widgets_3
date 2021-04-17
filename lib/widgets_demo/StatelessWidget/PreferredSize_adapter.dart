import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class AdapterPreferredSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            centerTitle: true,
            title: Text('PreferredSize'),
            leading: SizedBox(),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(30),
              child: Container(
                height: 40,
                color: Colors.orange,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
