import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomSimpleDialog extends StatelessWidget {
  final info = [
    '日語原名:    キズナアイ',
    '英語名稱:    Hello World',
    "作者:    森倉圓（人物原型）",
    "　　     Tomitake（模型製作）",
    "　　     Tda（模型監督）",
  ];

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: Stack(
        children: <Widget>[
          IgnorePointer(child: _buildSimpleDialog(context)),
          Positioned(
              top: 70,
              right: 30,
              child: _buildRaisedButton(context)),

        ],
      ),
    );
  }
  Widget _buildRaisedButton(BuildContext context) => RaisedButton(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))),
    color: Colors.blue,
    onPressed: () {
      showDialog(context: context, builder: (ctx) => _buildSimpleDialog(ctx));
    },
    child: Text(
      'Just Show It',
      style: TextStyle(color: Colors.white),
    ),
  );

  SimpleDialog _buildSimpleDialog(BuildContext context) {
    return SimpleDialog(
    title: _buildTitle(),
    titlePadding: EdgeInsets.only(
      top: 5,
      left: 20,
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 5),
    children: _buildChild(context),
    backgroundColor: Colors.white,
    elevation: 4,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))),
  );
  }

  List<Column> _buildChild(BuildContext context) {
    return info
        .map((str) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SimpleDialogOption(
                  onPressed: () => print(str),
                  child: Container(
                    width: double.infinity,
                    child: Text(
                      str,
                      style: TextStyle(color: Color(0xff999999), fontSize: 16),
                    ),
                  ),
                ),
                Divider(
                  indent: 20,
                  height: 12,
                  color: info.indexOf(str) == info.length - 1
                      ? Colors.transparent
                      : Theme.of(context).dividerColor,
                )
              ],
            ))
        .toList();
  }

  Widget _buildTitle() {
    return Row(
      //标题
      children: <Widget>[
        Image.asset(
          AssetPath.HEAD_ICON,
          width: 30,
          height: 30,
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
            child: Text(
          "Hello World",
          style: TextStyle(fontSize: 18),
        )),
        CloseButton()
      ],
    );
  }
}
