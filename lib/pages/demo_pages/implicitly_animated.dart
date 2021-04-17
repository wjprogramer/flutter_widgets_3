import 'package:flutter/material.dart';
import 'package:flutter_widgets_3/common/widgets/widget_container.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/AnimatedAlign.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/AnimatedContainer.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/AnimatedDefaultTextStyle.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/AnimatedOpacity.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/AnimatedPhysicalModel.dart';
import 'package:flutter_widgets_3/widgets_demo/StatefulWidget/AnimatedPositioned.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/ActionChip.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/AlertDialog.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/AnimatedIcon.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/BackButton.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Banner.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/BottomSheet.dart';
import 'package:flutter/material.dart';
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
import 'package:flutter_widgets_3/common/widgets/text.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Builder.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/ButtonBar.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Card.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Card_shape.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/CheckboxListTile.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Chip.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Chip_color.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Chip_delete.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/ChoiceChip.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/CircleAvatar.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/CloseButton.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Container.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/DataTable.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/DayPicker.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Dialog.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Divider.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Drawer.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/DrawerHeader.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/FadeInImage.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/FilterChip.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/FlatButton.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/FloatingActionButton.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/FloatingActionButton_mini.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/FloatingActionButton_shape.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/FlutterLogo.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/GestureDetector.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/GestureDetector_pan.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/GestureDetector_tap.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/GirdView.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/GirdView_builder.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/GirdView_direction.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/GirdView_extend.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/GridPaper_base.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/GridPaper_divisions.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/GridTile.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/GridTileBar.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/IconButton.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Icon_diy.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/ImageIcon.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/InputChip.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/InputChip_select.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/ListTile.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/ListTile_dense.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/ListTile_select.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/ListView.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/ListView_builder.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/ListView_direction.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/ListView_separated.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Listener.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/MaterialButton.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/NotificationListener.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/OutlineButton.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Placeholder.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/PositionedDirectional.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/PreferredSize.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/PreferredSize_adapter.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/RadioListTile.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/RadioListTile_dense.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/RaisedButton.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/SimpleDialog.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/SimpleDialogOption.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/SingleChildScrollView.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/SingleChildScrollView_direction.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/SnackBar.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/SnackBarAction.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Spacer.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Spacer_flex.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/SwitchListTile.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/SwitchListTile_dense.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/SwitchListTile_select.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Tab.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/TabBar.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/TabBar_noShadow.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Text.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Text_decoration.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Text_shadows.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Text_softWrap.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Text_textAlign.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Text_textDirection.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Theme.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Theme_use.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/ToggleButtons_color.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/ToggleButtons_multi.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/ToggleButtons_single.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/UserAccountsDrawerHeader.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/UserAccountsDrawerHeader_pro.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/VerticalDivider.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/VerticalDivider_height.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Visibility.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/AboutDialog.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/AboutListTile.dart';
import 'package:flutter_widgets_3/widgets_demo/StatelessWidget/Visibility_replacement.dart';
import 'package:flutter_widgets_3/common/widgets/text.dart';

class ImplicitlyAnimatedWidgetPage extends StatefulWidget {
  @override
  _ImplicitlyAnimatedWidgetPageState createState() => _ImplicitlyAnimatedWidgetPageState();
}

class _ImplicitlyAnimatedWidgetPageState extends State<ImplicitlyAnimatedWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ImplicitlyAnimatedWidget'),),
      body: ListView(
        children: <Widget>[
          h2('AnimatedAlign'),
          AnimatedAlignDemo(),
          h2('AnimatedContainer'),
          AnimatedContainerDemo(),
          h2('AnimatedDefaultTextStyle'),
          AnimatedDefaultTextStyleDemo(),
          h2('AnimatedOpacity'),
          AnimatedOpacityDemo(),
          h2('AnimatedPhysicalModel'),
          AnimatedPhysicalModelDemo(),
          h2('AnimatedPositioned'),
          AnimatedPositionedDemo(),
        ],
      ),
    );
  }
}
