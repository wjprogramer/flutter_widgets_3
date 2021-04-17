import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomAnimatedIcon extends StatefulWidget {
  @override
  _CustomAnimatedIconState createState() => _CustomAnimatedIconState();
}

class _CustomAnimatedIconState extends State<CustomAnimatedIcon>
    with SingleTickerProviderStateMixin {
  AnimationController _ctrl;

  @override
  void initState() {
    _ctrl = AnimationController(vsync: this, duration: Duration(seconds: 1));
    _ctrl.forward();
    super.initState();
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: GestureDetector(
        onTap: () {
          setState(() {
            _ctrl.reset();
            _ctrl.forward();
          });
        },
        child: Wrap(
          runSpacing: 30,
          children: _buildChildren(),
        ),
      ),
    );
  }

  final data = {
    Colors.orange: AnimatedIcons.menu_arrow,
    Colors.blue: AnimatedIcons.ellipsis_search,
    Colors.red: AnimatedIcons.close_menu,
    Colors.green: AnimatedIcons.arrow_menu,
    Colors.cyanAccent: AnimatedIcons.play_pause,
    Colors.purple: AnimatedIcons.pause_play,
    Colors.tealAccent: AnimatedIcons.add_event,
    Colors.teal: AnimatedIcons.event_add,
    Colors.blue: AnimatedIcons.home_menu,
    Colors.cyan: AnimatedIcons.list_view,
    Colors.amberAccent: AnimatedIcons.menu_arrow,
    Colors.amber: AnimatedIcons.menu_close,
    Colors.blueGrey: AnimatedIcons.menu_home,
    Colors.grey: AnimatedIcons.view_list,
    Colors.black: AnimatedIcons.search_ellipsis,
  };

  List<Widget> _buildChildren() => data.keys
      .map((e) => AnimatedIcon(
    size: 50,
    color: e,
    icon: data[e],
    progress: _ctrl,
  ))
      .toList();
}
