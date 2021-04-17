import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomStreamBuilder extends StatefulWidget {
  @override
  _CustomStreamBuilderState createState() => _CustomStreamBuilderState();
}

class _CustomStreamBuilderState extends State<CustomStreamBuilder> {
  CountGenerator _generator = CountGenerator()..increment();
  bool _needHideButtons = false;

  @override
  void dispose() {
    _generator.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return widgetContainer(
      height: 200,
      alignment: Alignment(0, -0.2),
      child: Container(
        alignment: FractionalOffset.center,
        color: Colors.white,
        child: StreamBuilder<int>(
          stream: _generator.state,
          builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
            List<Widget> children;
            if (snapshot.hasError) {
              _needHideButtons = true;

              children = <Widget>[
                Icon(
                  Icons.error_outline,
                  color: Colors.red,
                  size: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text('Error: ${snapshot.error}'),
                )
              ];
            } else {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  _needHideButtons = true;

                  children = <Widget>[
                    Icon(
                      Icons.info,
                      color: Colors.blue,
                      size: 60,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text('Select a lot'),
                    )
                  ];
                  break;
                case ConnectionState.waiting:
                  _needHideButtons = true;

                  children = <Widget>[
                    SizedBox(
                      child: const CircularProgressIndicator(),
                      width: 60,
                      height: 60,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text('Awaiting bids...'),
                    )
                  ];
                  break;
                case ConnectionState.active:
                  _needHideButtons = false;

                  children = <Widget>[
                    Text('\$${snapshot.data}')
                  ];
                  break;
                case ConnectionState.done:
                  _needHideButtons = true;

                  children = <Widget>[
                    Icon(
                      Icons.info,
                      color: Colors.blue,
                      size: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text('\$${snapshot.data} (closed)'),
                    )
                  ];
                  break;
              }
            }

            return Padding(
              padding: const EdgeInsets.only(bottom: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (!_needHideButtons)
                    FlatButton(
                      color: Colors.blue,
                      shape: CircleBorder(
                        side: BorderSide(width: 2.0, color: Color(0xFFFFDFDFDF)),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      onPressed: () async {
                        await _generator.increment();
                      },
                    ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: children,
                  ),

                  if (!_needHideButtons)
                    FlatButton(
                      color: Colors.blue,
                      shape: CircleBorder(
                        side: BorderSide(width: 2.0, color: Color(0xFFFFDFDFDF)),
                      ),
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                      onPressed: () async {
                        await _generator.minus();
                      },
                    ),
                ],
              ),
            );
          },
        ),
      ),
      bottomPanel: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: FlatButton(
            onPressed: () {
              _generator.dispose();
            },
            child: Text('close'),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.blue,
              )
            ),
          ),
        ),
      )
    );
  }
}

class CountGenerator {
  int _count = 0; //计数器数据
  final StreamController<int> _controller = StreamController(); //控制器

  Stream<int> get state => _controller.stream; //获取状态流
  int get count => _count; //获取计数器数据

  void dispose() {//关闭控制器
    _controller.close();
  }

  Future<void> increment() async {//增加记数方法
    _controller.add(++_count);
  }

  Future<void> minus() async {//增加记数方法
    _controller.add(--_count);
  }
}
