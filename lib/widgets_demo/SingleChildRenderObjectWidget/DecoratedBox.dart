import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class DecoratedBoxDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            _item(
              child: _dBox1(),
              title: 'BoxDecoration',
            ),
            _item(
              child: _dBox2(),
              title: 'Image',
            ),
            _item(
              child: _dBox3(),
              title: 'Border',
            ),
            _item(
              child: _dBox4(),
              title: 'ShapeDecoration',
            ),
            _item(
              child: _dBox5(),
              title: 'UnderlineTabIndicator',
            ),
          ],
        ),
      ),
    );
  }

  Widget _item({
    Widget child,
    String title,
  }) {
    return Container(
      constraints: BoxConstraints(
        minWidth: 100,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: child,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title),
          )
        ],
      ),
    );
  }

  _dBox1() {
    return DecoratedBox(
      position: DecorationPosition.background,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              stops: <double>[0.0, 1.0],
              colors: [
                Colors.green[200],
                Colors.blue[200],
              ]),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
          boxShadow: [
            const BoxShadow(
                color: Colors.orangeAccent,
                offset: Offset(1, 1),
                blurRadius: 10,
                spreadRadius: 1),
          ]),
      child: Icon(
        Icons.android,
        size: 80,
        color: Colors.black.withAlpha(123),
      ),
    );
  }

  _dBox2() {
    return DecoratedBox(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                AssetPath.BG1,
              ))),
      child: SizedBox(
        height: 80,
        width: 80,
      ),
    );
  }

  _dBox3() {
    return DecoratedBox(
      position: DecorationPosition.foreground,
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(color: Colors.orange, width: 2),
            top: BorderSide(color: Colors.orange, width: 2)),
      ),
      child: SizedBox(
        height: 80,
        width: 100,
        child: Image.asset(
          AssetPath.BG1,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  _dBox4() {
    return DecoratedBox(
      decoration: ShapeDecoration(
        shadows: [
          const BoxShadow(
              color: Colors.orangeAccent,
              offset: Offset(0, 0),
              blurRadius: 2,
              spreadRadius: 1),
        ],
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              AssetPath.BG1,
            )
        ),
        shape: CircleBorder(
          side: BorderSide(width: 1.0, color: Colors.orangeAccent),
        )
      ),
      child: SizedBox(
        height: 100,
        width: 100,
      ),
    );
  }

  _dBox5() {
    return DecoratedBox(
      decoration: UnderlineTabIndicator(
        insets: EdgeInsets.symmetric(horizontal: 5, vertical: -5),
        borderSide: BorderSide(color: Colors.orange, width: 2)
      ),
      child: Icon(
        Icons.ac_unit,
        color: Colors.blue,
        size: 40,
      ),
    );
  }
}
