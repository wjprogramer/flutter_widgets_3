import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_widgets_3/common/widgets/widget_container.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';

class AnimatedCrossFadeDemo extends StatefulWidget {
  @override
  _AnimatedCrossFadeDemoState createState() => _AnimatedCrossFadeDemoState();
}

class _AnimatedCrossFadeDemoState extends State<AnimatedCrossFadeDemo> {
  var _crossFadeState = CrossFadeState.showFirst;

  bool get isFirst => _crossFadeState == CrossFadeState.showFirst;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        /// region demo1
        widgetContainer(
          child: Stack(
            children: <Widget>[
              AnimatedCrossFade(
                firstCurve: Curves.easeIn,
                secondCurve: Curves.easeInOut,
                sizeCurve: Curves.bounceOut,
                firstChild: _cover1(),
                secondChild: _flutter(),
                duration: Duration(milliseconds: 600),
                crossFadeState: _crossFadeState,
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: _buildSwitch()
              ),
            ],
          ),
        ),
        /// endregion
      ],
    );
  }

  Widget _buildSwitch() =>
      Switch(value: isFirst, onChanged: (v) {
        setState(() {
          _crossFadeState =
          v ? CrossFadeState.showFirst : CrossFadeState.showSecond;
        });
      });

  // region Not Key Points
  _cover1() {
    return Row(
      children: <Widget>[
        Image.asset(covers[0].imagePath, height: 150,),
        Expanded(
          child: Container(
            color: Colors.blue[50],
            height: 150,
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                covers[0].name,
                softWrap: true,
                overflow: TextOverflow.fade,
                style: TextStyle(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  _flutter() {
    return Container(
      height: 150,
      child: Center(
        child: FlutterLogo(
          textColor: Colors.blue,
          size: 100,
          style: FlutterLogoStyle.stacked,
        ),
      ),
    );
  }
  // endregion
}
