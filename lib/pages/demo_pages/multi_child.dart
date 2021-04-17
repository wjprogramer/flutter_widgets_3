import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/widgets_demo/MultiChildRenderObjectWidget/CustomMultiChildLayout.dart';
import 'package:flutter_widgets_3/widgets_demo/MultiChildRenderObjectWidget/ListBody.dart';
import 'package:flutter_widgets_3/widgets_demo/MultiChildRenderObjectWidget/Column.dart';
import 'package:flutter_widgets_3/widgets_demo/MultiChildRenderObjectWidget/Flex.dart';
import 'package:flutter_widgets_3/widgets_demo/MultiChildRenderObjectWidget/Flow.dart';
import 'package:flutter_widgets_3/widgets_demo/MultiChildRenderObjectWidget/indexed_stack_demo.dart';
import 'package:flutter_widgets_3/widgets_demo/MultiChildRenderObjectWidget/RichText.dart';
import 'package:flutter_widgets_3/widgets_demo/MultiChildRenderObjectWidget/Row.dart';
import 'package:flutter_widgets_3/widgets_demo/MultiChildRenderObjectWidget/Stack.dart';
import 'package:flutter_widgets_3/widgets_demo/MultiChildRenderObjectWidget/Wrap.dart';
import 'package:flutter_widgets_3/common/widgets/text.dart';

class MultiChildPage extends StatefulWidget {
  @override
  _MultiChildPageState createState() => _MultiChildPageState();
}

class _MultiChildPageState extends State<MultiChildPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MultiChildRenderObjectWidget'),),
      body: ListView(
        children: <Widget>[

          h2('Column'),
          columnDemo(context),

          h2('CustomMultiChildLayout'),
          customMultiChildLayoutDemo(),

          h2('Flex'),
          p('direction'),
          flexDemo1(context),
          p('mainAxisAlignment'),
          flexDemo2(context),
          p('crossAxisAlignment'),
          flexDemo3(context),
          p('verticalDirection'),
          flexDemo4(context),
          p('textDirection'),
          flexDemo5(context),

          h2('Flow'),
          flowDemo(),

          h2('IndexedStack'),
          CustomIndexedStack(),

          h2('ListBody'),
          ListBodyDemo(),

          h2('RichText'),
          richTextDemo(),

          h2('Row'),
          rowDemo(),

          h2('Stack'),
          stackDemo(),

          h2('Wrap'),
          p('direction'),
          DirectionWrap(),
          p('alignment'),
          WrapAlignmentWrap(),
          p('crossAxisAlignment'),
          CrossAxisAlignmentWrap(),
          p('textDirection'),
          TextDirectionWrap(),
          p('verticalDirection'),
          VerticalDirectionWrap(),
        ],
      ),
    );
  }
}
