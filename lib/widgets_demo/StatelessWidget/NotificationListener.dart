import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class NotificationListenerDemo extends StatefulWidget {
  @override
  _NotificationListenerDemoState createState() => _NotificationListenerDemoState();
}

class _NotificationListenerDemoState extends State<NotificationListenerDemo> {
  var n = '';

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: NotificationListener(
        onNotification: (Notification notification) {
          if (notification is ScrollStartNotification) {
            n = 'ScrollStartNotification';
            setState(() { });
          } else if (notification is ScrollUpdateNotification) {
            n = 'ScrollUpdateNotification';
            setState(() { });
          } else if (notification is ScrollEndNotification) {
            n = 'ScrollEndNotification';
            setState(() { });
          }
          return true;
        },
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('notification: $n'),
            );
          }
        ),
      )
    );
  }
}
