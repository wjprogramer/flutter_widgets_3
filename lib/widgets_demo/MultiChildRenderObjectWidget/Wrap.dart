import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

/// --------------- COMMON ---------------

final _data = [
  Container(color: Colors.blue[100], height: 30, width: 50,),
  Container(color: Colors.blue[200], height: 40, width: 40,),
  Container(color: Colors.blue[300], height: 40, width: 20,),
  Container(color: Colors.blue[400], height: 10, width: 10,),
  Container(color: Colors.blue[500], height: 20, width: 20,),
  Container(color: Colors.blue[600], height: 80, width: 20,),
  Container(color: Colors.blue[700], height: 10, width: 20,),
];


Widget _container({ Widget child }) {
  return widgetContainer(
      height: null,
      padding: const EdgeInsets.all(16),
      child: Center(
        child: child,
      )
  );
}

Widget _item(Widget child, dynamic mode) {
  return Column(
    children: <Widget>[
      Container(
          margin: EdgeInsets.all(5),
          width: 160,
          height: 150,
          color: Colors.grey.withAlpha(33),
          child: child
      ),
      Text(mode.toString().split('.')[1])
    ],
  );
}

/// --------------- DEMO ---------------

class DirectionWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final list = Axis.values
      .map((mode) =>
        _item(_buildItem(mode), mode)
      )
      .toList();

    return _container(
      child: Wrap(children: list),
    );
  }

  _buildItem(mode) => Wrap(
    direction: mode,
    runSpacing: 10,
    spacing: 10,
    children: _data,
  );
}

class WrapAlignmentWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final list = WrapAlignment.values
      .map((mode) =>
        _item(_buildItem(mode), mode)
      )
      .toList();

    return _container(
      child: Wrap(children: list),
    );
  }

  _buildItem(mode) => Wrap(
    alignment: mode,
    runSpacing: 10,
    spacing: 10,
    children: _data,
  );
}

class CrossAxisAlignmentWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final list = WrapCrossAlignment.values
        .map((mode) =>
        _item(_buildItem(mode), mode)
    )
        .toList();

    return _container(
      child: Wrap(children: list),
    );
  }

  _buildItem(mode) => Wrap(
    crossAxisAlignment: mode,
    runSpacing: 10,
    spacing: 10,
    children: _data,
  );
}

class TextDirectionWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final list = TextDirection.values
        .map((mode) =>
        _item(_buildItem(mode), mode)
    )
        .toList();

    return _container(
      child: Wrap(children: list),
    );
  }

  _buildItem(mode) => Wrap(
    textDirection: mode,
    runSpacing: 10,
    spacing: 10,
    children: _data,
  );
}

class VerticalDirectionWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final list = VerticalDirection.values
        .map((mode) =>
        _item(_buildItem(mode), mode)
    )
        .toList();

    return _container(
      child: Wrap(children: list),
    );
  }

  _buildItem(mode) => Wrap(
    verticalDirection: mode,
    direction: Axis.vertical,
    runSpacing: 10,
    spacing: 10,
    children: _data,
  );
}
