import 'package:flutter/cupertino.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomCupertinoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: CupertinoApp(
        title: 'Flutter Demo',
        theme: CupertinoThemeData(
          primaryColor: CupertinoColors.white,
        ),
        home: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            leading: Icon(
              CupertinoIcons.reply,
              color: CupertinoColors.black,
            ),
            trailing: Icon(
              CupertinoIcons.share,
              color: CupertinoColors.black,
            ),
            middle: Text('Flutter'),
          ),
          backgroundColor: CupertinoColors.systemBackground,
          child: Align(
            alignment: Alignment(0, 0.6),
            child: Text('Hello, World!'),
          ),
        ),
      ),
    );
  }
}
