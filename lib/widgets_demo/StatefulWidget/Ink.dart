import 'package:flutter/material.dart';

class CustomInk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.orangeAccent,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Ink(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.yellow,
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),

            width: 200.0,
            height: 100.0,
            child: InkWell(
                onTap: () {
                },
                child: Center(
                  child: Text('Hello'),
                )),
          ),
        ),
      ),
    );
  }
}

