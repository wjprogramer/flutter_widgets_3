import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class FormFieldDemo extends StatefulWidget {
  @override
  _FormFieldDemoState createState() => _FormFieldDemoState();
}

class _FormFieldDemoState extends State<FormFieldDemo> {
  @override
  Widget build(BuildContext context) {
    return widgetContainer(
      child: Center(
        child: FormField<String>(
          builder: (FormFieldState<String> field) {
            return Text(field.value ?? '空值');
          },
        ),
      )
    );
  }
}
