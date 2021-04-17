import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class ListBodyDemo extends StatefulWidget {
  @override
  _ListBodyDemoState createState() => _ListBodyDemoState();
}

class _ListBodyDemoState extends State<ListBodyDemo> {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListBody(
              children: List.generate(3, (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('ListBody 1 - $index'),
              )),
            ),
            ListBody(
              children: List.generate(3, (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('ListBody 2 - $index', style: TextStyle(color: Colors.blue),),
              )),
            ),
          ],
        ),
      )
    );
  }
}
