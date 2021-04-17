import 'package:flutter/material.dart';

class CustomRefreshIndicator extends StatefulWidget {
  @override
  _CustomRefreshIndicatorState createState() => _CustomRefreshIndicatorState();
}

class _CustomRefreshIndicatorState extends State<CustomRefreshIndicator> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 200,
      width: 200,
      child: RefreshIndicator(
        onRefresh: _increment,
        displacement: 20,
        color: Colors.orange,
        backgroundColor: Colors.white,
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            width: 200,
            height: 300,
            color: Colors.blue,
            child: Text('$_count',style: TextStyle(color: Colors.white,fontSize: 40)),
          ),
        ),
      ),
    );
  }

  Future<void> _increment() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      _count++;
    });
  }
}
