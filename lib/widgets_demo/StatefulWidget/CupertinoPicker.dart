import 'package:flutter/cupertino.dart';

import '../../common/widgets/widget_container.dart';

class CustomCupertinoPicker extends StatelessWidget {
  final names = [
    'Cow',
    'Rabbit',
    'Dog',
    'Bird',
    'Cat',
  ];

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: 150,
      child: CupertinoPicker(
          backgroundColor: CupertinoColors.systemGrey.withAlpha(33),
          diameterRatio: 1,
          offAxisFraction: 0.4,
          squeeze: 1.5,
          itemExtent: 40,
          onSelectedItemChanged: (position) {
            print('[CupertinoPicker] Current Item: ${names[position]}');
          },
          children: names.map((e) => Center(child: Text(e))).toList()),
    );
  }
}
