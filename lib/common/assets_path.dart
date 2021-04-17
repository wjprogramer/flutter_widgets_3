class AssetPath {

  AssetPath._internal();

  static const _IMAGES_ROOT = 'assets/images';

  static const BG1 = '$_IMAGES_ROOT/bg.png';
  static const BG2 = '$_IMAGES_ROOT/bg.png';
  static const BG3 = '$_IMAGES_ROOT/art-game-mountains-nature.jpeg';
  static const CHARACTER1 = '$_IMAGES_ROOT/alienGreen_stand_1.png';
  static const CHARACTER2 = '$_IMAGES_ROOT/alienGreen_stand_2.png';
  static const ICON = '$_IMAGES_ROOT/platformChar_jump.png';
  static const ICON_COLORFUL = '$_IMAGES_ROOT/platformChar_jump_colorful.png';
  static const Q_CHARACTER1 = '$_IMAGES_ROOT/alienGreen_stand_1.png';
  static const Q_CHARACTER2 = '$_IMAGES_ROOT/alienGreen_stand_2.png';

  static const HEAD_ICON = '$_IMAGES_ROOT/kenney_animalPackRedux/Round without details/cow.png';

  // ignore: non_constant_identifier_names
  static var COVERS = List.generate(8, (index) => '$_IMAGES_ROOT/cover (${index + 1}).png');


}