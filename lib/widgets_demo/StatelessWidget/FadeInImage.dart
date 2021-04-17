import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';

class CustomFadeInImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var placeholder = AssetPath.BG1;
    var img =
        "https://p1.pstatp.com/large/6c360004b32bcc781720";

    return widgetContainer(
      child: Center(
        child: FadeInImage.assetNetwork(
            placeholder: placeholder,
            image: img,
          width: 200,
          height: 200,
          fit: BoxFit.cover,
          repeat:ImageRepeat.noRepeat,
          alignment: Alignment.center,
          fadeInDuration: Duration(seconds: 5),
          fadeInCurve: Curves.easeInCubic,
          fadeOutCurve: Curves.easeInCubic,
        ),
      ),
    );
  }
}
