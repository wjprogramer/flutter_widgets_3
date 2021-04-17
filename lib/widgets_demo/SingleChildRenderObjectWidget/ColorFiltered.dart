import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomColorFiltered extends StatefulWidget {
  @override
  _CustomColorFilteredState createState() => _CustomColorFilteredState();
}

class _CustomColorFilteredState extends State<CustomColorFiltered> {
  Color _color = Colors.blue.withAlpha(88);

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      child: Column(
        children: <Widget>[
          Wrap(spacing: 10, runSpacing: 10, children: [
            ...BlendMode.values
                .map((mode) => Column(
                      children: <Widget>[
                        _buildChild(mode),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          mode.toString().split('.')[1],
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ))
                .toList()
          ]),
        ],
      ),
    );
  }

  Widget _buildChild(m) => Container(
        width: 58,
        height: 58,
        child: ColorFiltered(
            child: Image(image: AssetImage(AssetPath.HEAD_ICON)),
            colorFilter: ColorFilter.mode(_color, m)),
      );

}
