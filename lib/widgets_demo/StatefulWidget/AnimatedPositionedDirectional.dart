import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomAnimatedPositionedDirectional extends StatefulWidget {
  @override
  _CustomAnimatedPositionedDirectionalState createState() =>
      _CustomAnimatedPositionedDirectionalState();
}

class _CustomAnimatedPositionedDirectionalState
    extends State<CustomAnimatedPositionedDirectional> {
  final startTop = 0.0;
  final endTop = 15.0;

  var _top = 0.0;

  Size size;

  @override
  void initState() {
    _top = startTop;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return widgetContainer(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          ..._buildChildren(),
        ],
      ),
      bottomPanel: _buildSwitch(),

    );

    return Column(
      children: <Widget>[
        _buildSwitch(),
        Container(
          color: Colors.grey.withAlpha(33),
          width: 200,
          height: 100,
          child: Stack(
            children: _buildChildren(),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildChildren() => <Widget>[
        AnimatedPositionedDirectional(
          duration: Duration(milliseconds: 700),
          top: _top + 5,
          end: _top * 4 + 10,
          child: Image.asset(AssetPath.Q_CHARACTER1, width: 85,),
        ),
        AnimatedPositionedDirectional(
          duration: Duration(milliseconds: 700),
          top: 30 - _top,
          end: 300 - _top * 4,
          child: Image.asset(AssetPath.Q_CHARACTER2, width: 70,),
        ),
      ];

  Widget _buildSwitch() => Row(
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
      Expanded(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('_top: $_top'),
        )
      ),
      Align(
        alignment: Alignment.centerRight,
        child: Switch(
            value: _top == endTop,
            onChanged: (v) {
              setState(() {
                _top = v ? endTop : startTop;
              });
            }),
      ),
    ],
  );
}
