import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class FractionalTranslationDemo extends StatefulWidget {
  @override
  _FractionalTranslationDemoState createState() => _FractionalTranslationDemoState();
}

class _FractionalTranslationDemoState extends State<FractionalTranslationDemo> {
  var _dx = 0.0;
  var _dy = 0.0;

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: Column(
        children: [
          FractionalTranslation(
            translation: Offset(_dx, _dy),
            child: Container(width: 100, height: 100, color: Colors.green[200],),
          ),
          _sliders(),
        ],
      ),
    );
  }

  Widget _sliders() {
    return Container(
      margin: const EdgeInsets.only(top: 16,),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.blue[200],
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('dx '),
              Slider(
                value: _dx,
                min: 0.0,
                max: 1.0,
                onChanged: (v) {
                  setState(() {
                    _dx = v;
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('dy '),
              Slider(
                value: _dy,
                min: 0.0,
                max: 1.0,
                onChanged: (v) {
                  setState(() {
                    _dy = v;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
