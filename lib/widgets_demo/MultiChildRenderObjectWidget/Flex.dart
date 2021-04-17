import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

final blueBox = Container(
  color: Colors.blue,
  height: 20,
  width: 30,
  child: Center(child: Text('1', style: TextStyle(color: Colors.white, fontSize: 16),)),
);

final redBox = Container(
  color: Colors.red,
  height: 30,
  width: 40,
  child: Center(child: Text('2', style: TextStyle(color: Colors.white, fontSize: 16),)),
);

final greenBox = Container(
  color: Colors.green,
  height: 20,
  width: 20,
  child: Center(child: Text('3', style: TextStyle(color: Colors.white, fontSize: 16),)),
);

final boxes = [
  blueBox, redBox, greenBox,
];

///
flexDemo1(BuildContext context) {
  _buildItem(mode) => Flex(
    direction: mode,
    children: boxes,
  );

  final data = Axis.values
      .map((mode) => _container(
      _buildItem(mode), mode
  )).toList();

  return _list(data);
}

flexDemo2(BuildContext context) {

  _buildItem(mode) => Flex(
    direction: Axis.horizontal,
    mainAxisAlignment: mode,
    children: boxes,
  );

  final data = MainAxisAlignment.values
      .map((mode) => _container(
      _buildItem(mode), mode
  )).toList();

  return _list(data);
}

flexDemo3(context) {
  _buildItem(mode) => Flex(
    direction: Axis.horizontal,
    crossAxisAlignment: mode,
    textBaseline: TextBaseline.alphabetic,
    children: <Widget>[
      blueBox, redBox, greenBox
    ],
  );

  final data = CrossAxisAlignment.values
      .map((mode) => _container(
      _buildItem(mode), mode
  )).toList();

  return _list(data);
}

flexDemo4(context) {
  _buildItem(mode) => Flex(
    direction: Axis.vertical,
    verticalDirection: mode,
    children: <Widget>[
      blueBox, redBox, greenBox
    ],
  );

  final data = VerticalDirection.values
      .map((mode) => _container(
      _buildItem(mode), mode
  )).toList();

  return _list(data);
}

flexDemo5(context) {
  _buildItem(mode) => Flex(
    direction: Axis.horizontal,
    textDirection: mode,
    children: <Widget>[
      blueBox, redBox, greenBox
    ],
  );

  final data = TextDirection.values
      .map((mode) => _container(
        _buildItem(mode), mode
      )).toList();

  return _list(data);
}

Widget _list(List<Widget> children) {
  return widgetContainer(
      height: null,
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Center(
          child: Wrap(
            runSpacing: 5,
            children: children,
          ),
        ),
      )
  );
}

Widget _container(Widget child, dynamic mode) {
  return Column(
    children: <Widget>[
      Container(
        margin: EdgeInsets.all(5),
        width: 160,
        height: 80,
        color: Colors.grey.withAlpha(33),
        child: child
      ),
      Text(mode.toString().split('.')[1])
    ],
  );
}