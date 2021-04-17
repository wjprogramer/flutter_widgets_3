import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomAnimatedSwitcher extends StatefulWidget {
  @override
  _CustomAnimatedSwitcherState createState() => _CustomAnimatedSwitcherState();
}

class _CustomAnimatedSwitcherState extends State<CustomAnimatedSwitcher> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: Center(
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            _buildMinusBtn(),
            SizedBox(width:80,child: _buildAnimatedSwitcher(context)),
            _buildAddBtn()
          ],
        ),
      ),
    );
  }

  Widget _buildAnimatedSwitcher(BuildContext context) =>
      AnimatedSwitcher(
          duration: const Duration(milliseconds: 400),
          switchInCurve: Curves.linear,
          switchOutCurve: Curves.linear,
          transitionBuilder: (Widget child, Animation<double> animation) =>
              ScaleTransition(
                  child: RotationTransition(turns: animation, child: child),
                  scale: animation),
          child: Text(
            '$_count',
            key: ValueKey<int>(_count),
            style: Theme.of(context).textTheme.headline2,
          ),
        );

  Widget _buildMinusBtn() {
   return MaterialButton(
        padding: EdgeInsets.all(0),
        textColor: Color(0xffFfffff),
        elevation: 3,
        color: Colors.red,
        highlightColor: Color(0xffF88B0A),
        splashColor: Colors.red,
        child: Icon(
          Icons.remove,
          color: Colors.white,
        ),
       shape: CircleBorder(
         side: BorderSide(width: 2.0, color: Color(0xFFFFDFDFDF)),
       ),
        onPressed: () => setState(() => _count -= 1));
  }

  Widget _buildAddBtn() => MaterialButton(
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
        onPressed: () => setState(() => _count += 1));
}
