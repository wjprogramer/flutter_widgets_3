import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Tab(
            icon:Icon( Icons.add,color: Colors.blue,),
            child: Text('新增'),
          ),
          Tab(
            icon: Icon( Icons.close,color: Colors.red,),
            text: '刪除',
          ),
          Tab(
            icon:Icon( Icons.refresh,color: Colors.green),
            text: '更新',
          ),
        ],
      ),
    );
  }
}
