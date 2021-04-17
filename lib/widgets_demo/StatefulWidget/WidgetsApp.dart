import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

GlobalObjectKey<NavigatorState> _globalObjectKey = GlobalObjectKey<NavigatorState>('widgets_app_global_key');

class WidgetsAppDemo extends StatefulWidget {
  @override
  _WidgetsAppDemoState createState() => _WidgetsAppDemoState();
}

class _WidgetsAppDemoState extends State<WidgetsAppDemo> {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: Builder(
        builder: (context) => WidgetsApp(
          key: _globalObjectKey,
          color: Colors.blue,
          home: _SecondPage(),
          onGenerateRoute: (settings) {
            return MaterialPageRoute(builder: (context) => _SecondPage());
          },
          builder: (BuildContext context, Widget child) {
            return child;
          },
          pageRouteBuilder: <Widget>(RouteSettings settings, WidgetBuilder builder) {
            return MaterialPageRoute(builder: (context) => _SecondPage());
          },
        ),
      )
    );
  }
}

/// Demo
class _SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),);
  }
}
