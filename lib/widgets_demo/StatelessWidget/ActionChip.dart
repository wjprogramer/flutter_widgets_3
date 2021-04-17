
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';
//import '../../../dialogs/dialog_about.dart';


class CustomActionChip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      padding: EdgeInsets.all(10.0),
      child: Center(
        child: ActionChip(
          padding: EdgeInsets.all(5),
          labelPadding: EdgeInsets.all(3),
          label: Text("This is a ActionChip."),
          backgroundColor: Colors.grey.withAlpha(66),
          avatar: Image.asset(AssetPath.HEAD_ICON),
          shadowColor: Colors.orangeAccent,
          elevation: 3,
          pressElevation: 5,
//      onPressed: ()=> DialogAbout.show(context),
          onPressed: ()=> {},
        ),
      ),
    );
  }
}
