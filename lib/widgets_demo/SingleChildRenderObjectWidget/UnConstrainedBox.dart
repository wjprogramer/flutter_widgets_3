import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomUnConstrainedBox extends StatefulWidget {
  @override
  _CustomUnConstrainedBoxState createState() => _CustomUnConstrainedBoxState();
}

class _CustomUnConstrainedBoxState extends State<CustomUnConstrainedBox> {
  var _value = false;

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: Center(
        child: Wrap(
          spacing: 20,
          children: <Widget>[_buildUnconstrainedBox(), _buildConstrainedAxis()],
        ),
      ),
    );
  }

  Widget _buildUnconstrainedBox() {
    var child = Container(
      color: Colors.blue[200],
      width: 60,
      height: 60,
      child: Switch(
        activeColor: Colors.white,
        activeTrackColor: Colors.white,
        focusColor: Colors.white,
        hoverColor: Colors.white,
        value: _value,
        onChanged: (v) {
          setState(() {
            _value = v;
          });
        },
      ),
    );

    return Column(
      children: <Widget>[
        Container(
          color: Colors.grey.withAlpha(22),
          width: 150,
          height: 100,
          child: _value
              ? UnconstrainedBox(alignment: Alignment.center, child: child)
              : child,
        ),
        Text(_value ? "已解除約束" : "子元件受約束")
      ],
    );
  }

  Widget _buildConstrainedAxis() {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.grey.withAlpha(22),
          width: 150,
          height: 100,
          child: UnconstrainedBox(
              alignment: Alignment.center,
              constrainedAxis: Axis.vertical,
              child: Container(
                color: Colors.blue[200],
                width: 60,
                height: 60,
              )),
        ),
        Text("垂直方向仍受約束")
      ],
    );
  }
}
