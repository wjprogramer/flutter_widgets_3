import 'package:ansicolor/ansicolor.dart';

class MyLogger {

  MyLogger._internal();

  static void info(String title, String message) {
    AnsiPen pen = AnsiPen()
      ..blue();

    print('[${pen(title)}] $message');
  }

}