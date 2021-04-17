import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class InheritedWidgetDemo extends StatefulWidget {
  @override
  _InheritedWidgetDemoState createState() => _InheritedWidgetDemoState();
}

class _InheritedWidgetDemoState extends State<InheritedWidgetDemo> {
  int _rootCount = 0;

  @override
  Widget build(BuildContext context) {
    return  widgetContainer(
      child: Center(
               /** Key Widget */
        child: ShareDataWidget(
          myCount: _rootCount,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: _ShowSharedData(),
              ),
              RaisedButton(
                child: Text("Increment"),
                onPressed: () => setState(() => ++_rootCount),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

                                /// Here ///
class ShareDataWidget extends InheritedWidget {
  ShareDataWidget({
    @required this.myCount,
    Widget child
  }) :super(child: child);

  final int myCount;

  static ShareDataWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ShareDataWidget>();
  }

  @override
  bool updateShouldNotify(ShareDataWidget old) {
    return old.myCount != myCount;
  }
}

class _ShowSharedData extends StatefulWidget {
  @override
  _ShowSharedDataState createState() => new _ShowSharedDataState();
}

class _ShowSharedDataState extends State<_ShowSharedData> {
  @override
  Widget build(BuildContext context) {
    return Text(ShareDataWidget
        .of(context)
        .myCount
        .toString());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("Dependencies change");
  }
}
