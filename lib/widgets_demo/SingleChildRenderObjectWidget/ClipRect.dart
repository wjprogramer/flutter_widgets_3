import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomClipRect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _container(
      child: Center(
        child: ClipRect(
          child: SizedBox(
            height: 100,
            width: 100,
            child: Image.asset(
              AssetPath.BG3,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  Widget _container({ Widget child }) {
    return widgetContainer(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            child: Opacity(
              opacity: 0.5,
              child: Image.asset(
                AssetPath.BG3,
                fit: BoxFit.cover,
              ),
            ),
          ),
          ClipRect(
            child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.black.withAlpha(0),
                )
            ),
          ),
          child,
        ],
      ),
    );
  }
}
