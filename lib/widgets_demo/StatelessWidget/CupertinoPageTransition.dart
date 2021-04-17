import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CupertinoPageTransitionDemo extends StatefulWidget {
  @override
  _CupertinoPageTransitionDemoState createState() => _CupertinoPageTransitionDemoState();
}

class _CupertinoPageTransitionDemoState extends State<CupertinoPageTransitionDemo> {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: CupertinoApp(
        home: CupertinoPageScaffold(
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(CupertinoPageRoute(
                    builder: (context) => _SecondPage()
                ));
              },
              child: Text('Press Me'),
            ),
          ),
        )
      )
    );
  }
}

class _SecondPage extends StatefulWidget {
  @override
  __SecondPageState createState() => __SecondPageState();
}

class __SecondPageState extends State<_SecondPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        transitionBetweenRoutes: false,
        heroTag: 'hero-tag-CupertinoPageTransitionDemo-CupertinoNavigationBar2',
      ),
      child: GestureDetector(
        onTap: () {
        },
        child: Center(
          child: Text('Screen 1',),
        ),
      ),
    );
  }
}
