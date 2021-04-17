import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class AnimatedModalBarrierDemo extends StatefulWidget {
  @override
  _AnimatedModalBarrierDemoState createState() => _AnimatedModalBarrierDemoState();
}

class _AnimatedModalBarrierDemoState extends State<AnimatedModalBarrierDemo> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  OverlayEntry _overlayEntry;
  Animation<Color> _colorsAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 100),
      vsync: this,
    );

    _colorsAnimation = ColorTween(
      begin: Colors.blue.withOpacity(0.5),
      end: Colors.white.withOpacity(0.5)
    ).animate(_controller);

    _overlayEntry = OverlayEntry(
        builder: (context) {
          return AnimatedModalBarrier(
            color: _colorsAnimation,
            dismissible: true, // changedInternalState is called if barrierDismissible updates
            semanticsLabel: '', // changedInternalState is called if barrierLabel updates
            barrierSemanticsDismissible: true,
          );
        }
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        try {
          _overlayEntry?.remove();
          return false;
        } catch (e) {
          return true;
        }
      },
      child: widgetContainer(
        child: Center(
          child: RaisedButton(
            onPressed: () {
              Overlay.of(context).insert(_overlayEntry);
            },
            child: Text('Show'),
          ),
        ),
      ),
    );
  }
}
