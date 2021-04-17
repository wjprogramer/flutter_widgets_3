import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomBottomSheet extends StatefulWidget {
  @override
  _CustomBottomSheetState createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  bool opened = false;

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
        child: Center(
          child: FlatButton(
              color: Colors.blue,
              onPressed: () {
                opened = !opened;
                opened
                    ? Scaffold.of(context)
                        .showBottomSheet((_) => _buildBottomSheet())
                    : Navigator.of(context).pop();
              },
              child: Text(
                '點我顯示/關閉BottomSheet',
                style: TextStyle(color: Colors.white),
              )),
        ));
  }

  Widget _buildBottomSheet() => BottomSheet(
      enableDrag: true,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(60),
          topLeft: Radius.circular(60),
        )
      ),
      backgroundColor: Colors.transparent,
      onClosing: () => print('onClosing'),
      builder: (_) => (Container(
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AssetPath.COVERS[6]),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(60),
                  topLeft: Radius.circular(60),
                )),
          )));
}
