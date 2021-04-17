import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/assets_path.dart';

var loremWhatIs = 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.';

final sAppBarColor = Color(0xFF2b2b2b);

final sColorData = <Color>[
  Colors.blue[50],
  Colors.blue[100],
  Colors.blue[200],
  Colors.blue[300],
  Colors.blue[400],
  Colors.blue[500],
  Colors.blue[600],
  Colors.blue[700],
  Colors.blue[800],
  Colors.blue[900],
];

final sColorData2 = List.generate(32, (i) => Color(0xFFf542a4 - 8 * i));
final sColorData3 = List.generate(64, (i) => Color(0xFFf542a4 - 4 * i));

// region Cover
class Cover {
  String name;
  String imagePath;

  Cover({this.name, this.imagePath});
}

var covers = <Cover>[
  Cover(name: 'Melty World [Prod. TeddyLoid]', imagePath: AssetPath.COVERS[3]),
  Cover(name: 'Hello Alone [Prod. MATZ]', imagePath: AssetPath.COVERS[5]),
  Cover(name: 'AIAIAI [feat. 中田ヤスタカ]', imagePath: AssetPath.COVERS[2]),
  Cover(name: 'Hello, Morning [Prod. Nor]', imagePath: AssetPath.COVERS[3]),
  Cover(name: 'Future base [Prod. Yunomi]', imagePath: AssetPath.COVERS[0]),
  Cover(name: 'New world [Prod. Yunomi]', imagePath: AssetPath.COVERS[6]),
  Cover(name: 'Miracle step [Prod. Nor]', imagePath: AssetPath.COVERS[0]),
  Cover(name: 'Meet you [Prod. DÉ DÉ MOUSE]', imagePath: AssetPath.COVERS[2]),
  Cover(name: 'mirai [Prod. ☆Taku takahashi]', imagePath: AssetPath.COVERS[4]),
  Cover(name: 'over the reality [Prod. Avec Avec]', imagePath: AssetPath.COVERS[1]),
];
// endregion

String colorString(Color color) =>
    "#${color.value.toRadixString(16).padLeft(8, '0').toUpperCase()}";

sIcon() {
  return ShaderMask(
    shaderCallback: (bounds) => LinearGradient(
        colors: [
          Colors.blue[100],
          Colors.blue[100],
        ]
    ).createShader(bounds),
    child: Image.asset(
      AssetPath.ICON,
      height: 25,
    ),
    blendMode: BlendMode.srcATop,
  );
}

sTitle() {
  return Text(
    'Hello World',
    style: TextStyle(color: Colors.white,
      shadows: [
        Shadow(
          color: Colors.blue,
          offset: Offset(1, 1),
          blurRadius: 2
        )
      ]
    ),
  );
}

