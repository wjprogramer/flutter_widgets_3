import 'package:flutter/material.dart';

class CustomWillPopScope extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: WillPopScope(child: (BackButton()),
          onWillPop: ()=>_willPop(context)),
    );
  }

  Future<bool> _willPop(context) async{
    return await showDialog(
      context: context,
      builder: (context) =>  AlertDialog(
        shape:  RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        title:  Text('提示'),
        content:  Text('你确定要离开此頁吗?'),
        actions: <Widget>[
          FlatButton(
            onPressed: () => Navigator.of(context).pop(true),
            child:  Text('确定'),
          ),
           FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child:  Text('取消'),
          ),

        ],
      ),
    ) ?? false;

  }
}
