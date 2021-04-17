import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/button.dart';
import 'package:flutter_widgets_3/pages/demo_pages/cupertino.dart';
import 'package:flutter_widgets_3/pages/demo_pages/multi_child.dart';
import 'package:flutter_widgets_3/pages/demo_pages/other.dart';
import 'package:flutter_widgets_3/pages/demo_pages/proxy.dart';
import 'package:flutter_widgets_3/pages/demo_pages/single_child.dart';
import 'package:flutter_widgets_3/pages/demo_pages/sliver.dart';
import 'package:flutter_widgets_3/pages/demo_pages/stful_a_i.dart';
import 'package:flutter_widgets_3/pages/demo_pages/stful_j_r.dart';
import 'package:flutter_widgets_3/pages/demo_pages/stful_s_z.dart';
import 'package:flutter_widgets_3/pages/demo_pages/implicitly_animated.dart';
import 'package:flutter_widgets_3/pages/demo_pages/animated.dart';
import 'package:flutter_widgets_3/pages/demo_pages/stless.dart';
import 'package:flutter_widgets_3/common/widgets/text.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets'),
        shadowColor: Colors.transparent,
      ),
      body: ListView(
        children: <Widget>[
          h1('Hello'),
          // https://flutter.dev/docs/development/ui/widgets
          // button(
          //   context: context,
          //   text: 'Assets, images, and icon widgets',
          //   page: AssetsImageAndIconWidgetsPage(),
          // ),
          button(
            context: context,
            text: 'Cupertino (iOS-style widgets)',
            page: CupertinoPage(),
            textColor: Colors.indigo,
          ),
          // -------
          button(
            context: context,
            text: 'MultiChildRenderObjectWidget',
            page: MultiChildPage(),
          ),
          button(
            context: context,
            text: 'Other',
            page: OtherPage(),
          ),
          button(
            context: context,
            text: 'ProxyWidget',
            page: ProxyPage(),
          ),
          button(
            context: context,
            text: 'SingleChildRenderObjectWidget',
            page: SingleChildPage(),
          ),
          button(
            context: context,
            text: 'Sliver',
            page: SliverPage(),
          ),
          p('１. ＡＢＣＤＥＦＧＨＩ\n'
              '２. ＪＫＬＭＮＯＰＱＲ\n'
              '３. ＳＴＵＶＷＸＹＺ'),
          button(
            context: context,
            text: 'StatefulWidget (a-i)',
            page: StfulPageAI(),
          ),
          button(
            context: context,
            text: 'StatefulWidget (j-r)',
            page: StfulPageJR(),
          ),
          button(
            context: context,
            text: 'StatefulWidget (s-z)',
            page: StfulPageSZ(),
          ),
          button(
            context: context,
            text: 'StatefulWidget / ImplicitlyAnimatedWidget',
            page: ImplicitlyAnimatedWidgetPage(),
          ),
          button(
            context: context,
            text: 'StatefulWidget / AnimatedWidget',
            page: AnimatedWidgetPage(),
          ),
          button(
            context: context,
            text: 'StatelessWidget',
            page: StlessPage(),
          ),
          button(
            context: context,
            text: '',
            page: MultiChildPage(),
          ),
          button(
            context: context,
            text: '',
            page: MultiChildPage(),
          ),
          button(
            context: context,
            text: '',
            page: MultiChildPage(),
          ),
        ],
      ),
    );
  }
}
