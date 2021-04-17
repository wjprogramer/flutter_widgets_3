import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/AbsorbPointer.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/Align1.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/Align2.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/AnimatedSize.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/AspectRatio.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/BackdropFilter.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/Baseline.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/Center.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/ClipOval.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/ClipPath.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/ClipRRect.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/ClipRect.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/ColorFiltered.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/ConstrainedBox.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/CustomPaint.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/CustomSingleChildLayout.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/DecoratedBox.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/ExcludeSemantics.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/FittedBox.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/FractionalTranslation.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/FractionallySizedBox.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/IgnorePointer.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/IntrinsicHeight.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/IntrinsicWidth.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/LayoutBuilder.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/LayoutBuilder_Responsive.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/LayoutBuilder_Expend.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/LimitedBox.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/MergeSemantics.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/OffStage.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/Opacity.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/OverflowBox.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/Padding.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/RotatedBox.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/Semantics.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/ShaderMask_Radial.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/ShaderMask_Linear.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/SizedBox.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/SizedOverflowBox.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/Transform.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/Transform_Perspective.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/Transform_Rotate.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/Transform_Scale.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/Transform_Skew.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/Transform_Translation.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/UnConstrainedBox.dart';
import 'package:flutter_widgets_3/common/widgets/text.dart';
import 'package:flutter_widgets_3/widgets_demo/SingleChildRenderObjectWidget/FadeTransition.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/AnimatedCrossFade.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/AnimatedList.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/AnimatedSize.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/AnimatedWidget.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/DecoratedBoxTransition.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/Hero.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/PositionedTransition.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/RotationTransition.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/ScaleTransition.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/SizeTransition.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/SlideTransition.dart';

class SingleChildPage extends StatefulWidget {
  @override
  _SingleChildPageState createState() => _SingleChildPageState();
}

class _SingleChildPageState extends State<SingleChildPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SingleChildRenderObjectWidget'),),
      body: ListView(
        children: <Widget>[

          h2('AbsorbPointer'),
          AbsorbPointerDemo(),

          h2('Align'),
          AlignDemo1(),
          AlignDemo2(),

          h2('AnimatedSize'),
          AnimatedSizeDemo(),
          AnimatedSizeDemo2(),

          h2('AspectRatio'),
          CustomAspectRatio(),

          h2('BackdropFilter'),
          CustomBackdropFilter(),

          h2('Baseline'),
          CustomBaseline(),

          h2('Center'),
          CustomCenter(),

          h2('ClipOval'),
          CustomClipOval(),

          h2('ClipPath'),
          CustomClipPath(),

          h2('ClipRect'),
          CustomClipRect(),

          h2('ClipRRect'),
          CustomClipRRect(),

          h2('ColorFiltered'),
          CustomColorFiltered(),

          h2('ConstrainedBox'),
          CustomConstrainedBox(),

          h2('CustomPaint'),
          CustomPaintDemo(),

          h2('CustomSingleChildLayout'),
          CustomSingleChildLayoutDemo(),

          h2('DecoratedBox'),
          DecoratedBoxDemo(),

          h2('ExcludeSemantics'),
          ExcludeSemanticsDemo(),

          h2('FadeTransition'),
          FadeTransitionDemo(),

          h2('FittedBox'),
          FittedBoxDemo(),

          h2('FractionallySizedBox'),
          FractionallySizedBoxDemo(),

          h2('FractionalTranslation'),
          FractionalTranslationDemo(),

          h2('IgnorePointer'),
          CustomIgnorePointer(),

          h2('IntrinsicHeight'),
          IntrinsicHeightDemo(),

          h2('IntrinsicWidth'),
          IntrinsicWidthDemo(),

          h2('LayoutBuilder'),
          LayoutBuilderDemo(),
          p('Responsive'),
          LayoutBuilderResponsiveDemo(),
          p('TextPainter + LayoutBuilder'),
          LayoutBuilderWithTextPainterDemo(),

          h2('LimitedBox'),
          CustomLimitedBox(),

          h2('MergeSemantics'),
          MergeSemanticsDemo(),

          h2('Offstage'),
          OffstageDemo(),

          h2('Opacity'),
          OpacityDemo(),

          h2('OverflowBox'),
          OverflowBoxDemo(),

          h2('Padding'),
          PaddingDemo(),

          h2('RotatedBox'),
          CustomRotatedBox(),

          h2('Semantics'),
          SemanticsDemo(),

          h2('ShaderMask'),
          RadialShaderMask(),
          LinearShaderMask(),

          h2('SizedBox'),
          CustomSizedBox(),

          h2('SizedOverflowBox'),
          p('SizedBox 與 OverflowBox 的結合體'),
          CustomSizedOverflowBox(),

          h2('Transform'),
          CustomTransform(),
          p('斜切變換 skew'),
          SkewTransform(),
          p('平移变换 translationValues'),
          TranslationTransform(),
          p('縮放變換 diagonal3Values'),
          ScaleTransform(),
          p('旋轉變換 rotation'),
          RotateTransform(),
          p('透視變換 rotation'),
          R3C2(),

          h2('UnConstrainedBox'),
          CustomUnConstrainedBox(),
        ],
      ),
    );
  }
}
