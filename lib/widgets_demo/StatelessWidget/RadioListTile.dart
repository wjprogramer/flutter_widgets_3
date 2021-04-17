import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';

enum ItemType {
  java,
  kotlin,
  dart,
}

class ItemBean {
  final String title;
  final String subTitle;
  final String imgUrl;

  ItemBean(this.title, this.subTitle, this.imgUrl);
}

class CustomRadioListTile extends StatefulWidget {
  @override
  _CustomRadioListTileState createState() => _CustomRadioListTileState();
}

class _CustomRadioListTileState extends State<CustomRadioListTile> {
  @override
  Widget build(BuildContext context) {
    final Map<ItemType, ItemBean> languages = {
      ItemType.java:
      ItemBean("Java", loremWhatIs.substring(0, 50), AssetPath.COVERS[0]),
      ItemType.kotlin:
      ItemBean("Kotlin", loremWhatIs.substring(0, 50), AssetPath.COVERS[1]),
      ItemType.dart:
      ItemBean("Dart", loremWhatIs.substring(0, 50), AssetPath.COVERS[2]),
    };
    var _type = ItemType.java;

    return widgetContainer(
      height: null,
      child: Container(
        color: Colors.grey.withAlpha(11),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: languages.keys
                .map((type) => RadioListTile<ItemType>(
              value: type,
              groupValue: _type,
              title: Text(languages[type].title),
              subtitle: Text(languages[type].subTitle),
              selected: _type == type,
              secondary: Container(
                width: 50,
                height: 50,
                child: CircleAvatar(
                  backgroundImage: AssetImage(languages[type].imgUrl),
                ),
              ),
              onChanged: (type) => setState(() => _type = type),
            ))
                .toList()),
      ),
    );
  }
}
