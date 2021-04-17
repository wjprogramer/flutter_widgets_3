import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class LayoutBuilderResponsiveDemo extends StatefulWidget {
  @override
  _LayoutBuilderResponsiveDemoState createState() => _LayoutBuilderResponsiveDemoState();
}

class _LayoutBuilderResponsiveDemoState extends State<LayoutBuilderResponsiveDemo> {
  double _width = 100;

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: Column(
        children: [
          Container(
            height: 160,
            margin: const EdgeInsets.only(top: 16, bottom: 16),
            child: Center(
              child: Container(
                width: _width,
                child: LayoutBuilder(
                  builder: (context, zone) {
                    if (zone.maxWidth <= 150) {
                      return _widgetOnMobile();
                    } else {
                      return _widgetOnDesktop(zone);
                    }
                  },
                ),
              ),
            ),
          ),
          _buildSlider(),
        ],
      ),
    );
  }

  Widget _buildSlider() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.blue[200],
          ),
        ),
      ),
      child: Slider(
        min: 100,
        max: 200,
        label: "Parent Width: ${_width.toStringAsFixed(1)}",
        value: _width,
        onChanged: (v) => setState(() {
            _width = v;
          }
        )
      ),
    );
  }

  Widget _widgetOnMobile() => Container(
    color: Colors.blue,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        _titleOnMobile(),
        Padding(
          padding: const EdgeInsets.only(top: 4, left: 8, right: 8),
          child: _buildContent(),
        ),
      ],
    ),
  );

  Widget _widgetOnDesktop(BoxConstraints zone) {
    return Container(
      width: zone.maxWidth,
      color: Colors.black87,
      child: IntrinsicHeight(
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              padding: EdgeInsets.symmetric(horizontal: 4),
              color: Colors.green[100],
              child: Center(child: Text('Title')),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: _buildContent(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _titleOnMobile() => Container(
    margin: EdgeInsets.only(left: 10, right: 10, top: 10),
    color: Colors.white,
    height: 30,
    child: Center(child: Text('Title')),
  );

  Widget _buildContent() => Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      SizedBox(height: 4,),
      _content(
        color: Colors.blue[100],
        message: 'Content 1',
      ),
      _content(
        color: Colors.blue[200],
        message: 'Content 2',
      ),
      _content(
        color: Colors.blue[300],
        message: 'Content 3',
      ),
      SizedBox(height: 4,),
    ],
  );

  Widget _content({
    Color color,
    String message,
  }) {
    return Container(
      margin: const EdgeInsets.only(top: 2, bottom: 2),
      color: color,
      height: 30,
      child: Center(child: Text(message)),
    );
  }

}
