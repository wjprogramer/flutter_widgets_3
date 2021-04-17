import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomMaterialButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      height: null,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            /// 1. base
            MaterialButton(
                minWidth: double.infinity,
                height: 40,
                elevation: 5,
                color: Colors.blue[200],
                textColor: Colors.white,
                splashColor: Colors.blue,
                padding: EdgeInsets.all(8),
                child: Text("onPressed"),
                onPressed: () =>  {  }),
            /// 2. onLongPress
            MaterialButton(
                minWidth: double.infinity,
                height: 40,
                elevation: 5,
                color: Colors.blue,
                highlightColor: Colors.green,
                textColor: Colors.white,
                padding: EdgeInsets.all(8),
                child: Text("onLongPress"),
                onLongPress: () =>  {  },
                onPressed: () => {  }),

            SizedBox(height: 5,),
            /// 3. shape
            Wrap(
              spacing: 20,
              children: <Widget>[
                Container(
                  width: 40,
                  height: 40,
                  child: MaterialButton(
                      padding: EdgeInsets.all(0),
                      textColor: Color(0xffFfffff),
                      elevation: 3,
                      color: Colors.blue,
                      highlightColor: Color(0xffF88B0A),
                      splashColor: Colors.red,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      shape: CircleBorder(
                        side: BorderSide(width: 2.0, color: Color(0xFFFFDFDFDF)),
                      ),
                      onLongPress: () =>  {  },
                      onPressed: () =>  {  }),
                ),
                Container(
                  width: 100,
                  height: 40,
                  child: MaterialButton(
                    padding: EdgeInsets.all(0),
                    textColor: Color(0xffFfffff),
                    elevation: 3,
                    color: Colors.blue,
                    highlightColor: Color(0xffF88B0A),
                    splashColor: Colors.red,
                    child: Text('shape'),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    onLongPress: () =>  {  },
                    onPressed: () =>  {  }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}