import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class RawKeyboardListenerDemo extends StatefulWidget {
  @override
  _RawKeyboardListenerDemoState createState() => _RawKeyboardListenerDemoState();
}

class _RawKeyboardListenerDemoState extends State<RawKeyboardListenerDemo> {
  TextEditingController _controller = new TextEditingController();
  FocusNode _textNode = new FocusNode();


  @override
  initState() {
    super.initState();
  }

  //Handle when submitting
  void _handleSubmitted(String finalinput) {

    setState(() {
//      SystemChannels.textInput.invokeMethod('TextInput.hide'); //hide keyboard again
      _controller.clear();
    });
  }

  handleKey(RawKeyEvent  key) {
    print("Event runtimeType is ${key.runtimeType}");
    if(key.runtimeType.toString() == 'RawKeyDownEvent'){
      RawKeyEventDataAndroid data = key.data as RawKeyEventDataAndroid;
      String _keyCode;
      _keyCode = data.keyCode.toString(); //keycode of key event (66 is return)

      print("why does this run twice $_keyCode");
    }
  }

  _buildTextComposer() {
    TextField _textField = new TextField(
      controller: _controller,
      onSubmitted: _handleSubmitted,
    );

    FocusScope.of(context).requestFocus(_textNode);

    return Container(
      width: double.infinity,
      height: 150,
      child: RawKeyboardListener(
        focusNode: _textNode,
        onKey: handleKey,
        child: _textField
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return widgetContainer(child: Center(child: _buildTextComposer(),));
  }
}
