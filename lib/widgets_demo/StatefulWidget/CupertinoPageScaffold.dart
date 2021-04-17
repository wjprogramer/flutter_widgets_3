import 'package:flutter/cupertino.dart';

import '../../common/widgets/widget_container.dart';

class CustomCupertinoPageScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: MediaQuery.of(context).size.height / 4,
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          transitionBetweenRoutes: false,
          heroTag: 'hero-tag-CupertinoPageTransitionDemo-CupertinoPageScaffold',
          leading: Icon(CupertinoIcons.reply),
          trailing: Icon(CupertinoIcons.share),
          middle: Text('Flutter'),
        ),
        backgroundColor: CupertinoColors.systemBackground,
        child: Center(
          child: Text('Hello, World!'),
        ),
      ),
    );
  }
}