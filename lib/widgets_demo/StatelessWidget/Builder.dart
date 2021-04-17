import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class BuilderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: Scaffold(
        body: Center(
          child: Text('Click FloatingActionButton'),
        ),
        floatingActionButton: Builder(
          builder: (ctx) => FloatingActionButton(
            onPressed: () {
              Scaffold.of(ctx)
                  .showSnackBar(SnackBar(content: Text('hello builder')));
            },
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
