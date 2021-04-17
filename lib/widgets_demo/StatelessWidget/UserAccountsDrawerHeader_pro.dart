import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class ProUAGHP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: Container(
        width: MediaQuery.of(context).size.width / 3 * 2,
        child: UserAccountsDrawerHeader(
          margin: EdgeInsets.all(10),
          accountName: Container(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "WJ Programer",
              style:
              TextStyle(color: Colors.white, fontSize: 22, shadows: [
                Shadow(
                    color: Colors.black, offset: Offset(.5, .5), blurRadius: 15
                ),
                Shadow(
                    color: Colors.black, offset: Offset(.5, .5), blurRadius: 15
                ),
              ]),
            ),
          ),
          accountEmail: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("wj.programer@gmail.com",
                style: TextStyle(
                    color: Colors.white, fontSize: 14,
                    shadows: [
                  Shadow(
                      color: Colors.orangeAccent,
                      offset: Offset(.5, .5),
                      blurRadius: 2),
                ])),
          ),
          currentAccountPicture: Container(
            padding: const EdgeInsets.all(15.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(AssetPath.HEAD_ICON),
            ),
          ),
          otherAccountsPictures: <Widget>[
            FlutterLogo(),
          ],
          onDetailsPressed: () {

          },
          arrowColor: Colors.white,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetPath.BG1)),
          ),
        ),
      ),
    );
  }
}
