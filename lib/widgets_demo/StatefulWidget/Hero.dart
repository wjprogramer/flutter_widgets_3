import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';

class HeroDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var hero = Hero(
      tag: 'user-head',
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        child: Image.asset(
          AssetPath.HEAD_ICON,
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
      ),
    );

    var container = Container(
      alignment: Alignment(-1, -1),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: hero,
      ),
      width: 250,
      height: 250 * 0.618,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.red.withAlpha(99),
        Colors.yellow.withAlpha(189),
        Colors.green.withAlpha(88),
        Colors.blue.withAlpha(230)
      ])),
    );

    return GestureDetector(
      child: Card(elevation: 5, child: container),
      onTap: () => Navigator.push(
        context,
        Bottom2TopRouter(child: TargetPage(), duration: 1000),
      ),
    );
  }

}

class TargetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var hero = Hero(
      //----定义一个Hero,为其添加标签，两个标签相同，则可以共享
      tag: 'user-head',
      child: Padding(
        padding: EdgeInsets.all(6.0),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage(
            AssetPath.HEAD_ICON,
          ),
        ),
      ),
    );

    var touch = InkWell(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: hero,
    );

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[touch],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.red.withAlpha(99),
          Colors.yellow.withAlpha(189),
          Colors.green.withAlpha(88),
          Colors.blue.withAlpha(230)
        ])),
      ),
    );
  }
}

//下--->上
class Bottom2TopRouter<T> extends PageRouteBuilder<T> {
  final Widget child;
  final int duration;
  final Curve curve;

  Bottom2TopRouter(
      {this.child, this.duration = 500, this.curve = Curves.fastOutSlowIn})
      : super(
            transitionDuration: Duration(milliseconds: duration),
            pageBuilder: (ctx, a1, a2) {
              return child;
            },
            transitionsBuilder: (
              ctx,
              a1,
              a2,
              Widget child,
            ) => SlideTransition(
                  position: Tween<Offset>(
                    begin: Offset(0.0, 1.0),
                    end: Offset(0.0, 0.0),
                  ).animate(CurvedAnimation(parent: a1, curve: curve)),
                  child: child));
}
