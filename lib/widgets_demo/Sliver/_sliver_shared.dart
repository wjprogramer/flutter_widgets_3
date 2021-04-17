import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';

// region SliverAppBar
Widget sSliverAppBar({
  useIcon = true,
}) {
  return SliverAppBar(
    expandedHeight: 190.0,
    leading: sLeading(useIcon: useIcon),
    title: sTitle(),
    actions: sActions(),
    elevation: 2,
    pinned: true,
    backgroundColor: sAppBarColor,
    flexibleSpace: FlexibleSpaceBar(
      //伸展处布局
      titlePadding: EdgeInsets.only(left: 55, bottom: 15), //标题边距
      collapseMode: CollapseMode.parallax, //视差效果
      background: sSliverAppBarBackground(),
    ),
  );
}

Widget sLeading({useIcon = true}) => Container(
  margin: EdgeInsets.all(10),
  child: useIcon ? sIcon() : Image.asset(AssetPath.COVERS[0]),
);

List<Widget> sActions() => <Widget>[
  IconButton(
    onPressed: () {},
    icon: Icon(
      Icons.star_border,
      color: Colors.white,
    ),
  )
];

Widget sSliverAppBarBackground() {
  return Image.asset(
    AssetPath.BG1,
    fit: BoxFit.cover,
  );
}
// endregion

sListItem(index) {
  return Container(
    alignment: Alignment.center,
    width: 100,
    height: 50,
    color: sColorData[index],
    child: Text(
      colorString(sColorData[index]),
      style: TextStyle(color: Colors.white, shadows: [
        Shadow(
            color: Colors.black,
            offset: Offset(.5, .5),
            blurRadius: 2)
      ]),
    ),
  );
}