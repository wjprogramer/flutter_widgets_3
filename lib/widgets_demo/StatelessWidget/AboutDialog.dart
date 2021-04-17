import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';
import 'package:flutter_widgets_3/widgets_demo/_shared/shared.dart';

class AboutDialogDemo extends StatefulWidget {
  @override
  _AboutDialogDemoState createState() => _AboutDialogDemoState();
}

class _AboutDialogDemoState extends State<AboutDialogDemo> {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(child: Stack(
      children: <Widget>[
        Center(
          child: _buildRaisedButton(context),
        ),
      ],
    ));
  }

  Widget _buildRaisedButton(BuildContext context) => RaisedButton(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))),
    color: Colors.blue,
    onPressed: () {
      showDialog(context: context, builder: (ctx) => _buildAboutDialog());
    },
    child: Text(
      'Show It',
      style: TextStyle(color: Colors.white),
    ),
  );

  AboutDialog _buildAboutDialog() {
    return AboutDialog(
      applicationIcon: Image.asset(AssetPath.ICON, width: 35,),
      applicationVersion: 'v0.0.1',
      applicationName: 'Hello World',
      applicationLegalese: 'Copyright© 2018-2020',
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(top: 20),
            width: 160,
            height: 160,
            child: Image.asset(covers[2].imagePath)),
        Container(
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: Text(
              covers[2].name,
              style: TextStyle(color: Colors.black, fontSize: 20, shadows: [
                Shadow(
                    color: Colors.purple, offset: Offset(.5, .5), blurRadius: 13)
              ]),
            ))
      ],
    );
  }
}
