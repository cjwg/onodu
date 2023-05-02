import '/components/bottom_sheet_title_widget.dart';
import '/components/palette_editor_bottom_nav_widget.dart';
import '/components/palette_item_widget.dart';
import '/components/theme_card/theme_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ThemeSettingsModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  int? pageViewIndex = 0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for PageView widget.
  PageController? pageViewController;
  // Model for BottomSheetTitle component.
  late BottomSheetTitleModel bottomSheetTitleModel;
  // Model for Palette.
  late ThemeCardModel paletteModel;
  // Model for Typography.
  late ThemeCardModel typographyModel;
  // Model for Images.
  late ThemeCardModel imagesModel;
  // Model for Buttons.
  late ThemeCardModel buttonsModel;
  // Model for Layout.
  late ThemeCardModel layoutModel;
  // Model for Animation.
  late ThemeCardModel animationModel;
  // Model for ThemeBrowser.
  late ThemeCardModel themeBrowserModel;
  // Model for PaletteItem component.
  late PaletteItemModel paletteItemModel1;
  // Model for PaletteItem component.
  late PaletteItemModel paletteItemModel2;
  // Model for PaletteItem component.
  late PaletteItemModel paletteItemModel3;
  // Model for PaletteItem component.
  late PaletteItemModel paletteItemModel4;
  // Model for PaletteItem component.
  late PaletteItemModel paletteItemModel5;
  // Model for PaletteEditorBottomNav component.
  late PaletteEditorBottomNavModel paletteEditorBottomNavModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bottomSheetTitleModel = createModel(context, () => BottomSheetTitleModel());
    paletteModel = createModel(context, () => ThemeCardModel());
    typographyModel = createModel(context, () => ThemeCardModel());
    imagesModel = createModel(context, () => ThemeCardModel());
    buttonsModel = createModel(context, () => ThemeCardModel());
    layoutModel = createModel(context, () => ThemeCardModel());
    animationModel = createModel(context, () => ThemeCardModel());
    themeBrowserModel = createModel(context, () => ThemeCardModel());
    paletteItemModel1 = createModel(context, () => PaletteItemModel());
    paletteItemModel2 = createModel(context, () => PaletteItemModel());
    paletteItemModel3 = createModel(context, () => PaletteItemModel());
    paletteItemModel4 = createModel(context, () => PaletteItemModel());
    paletteItemModel5 = createModel(context, () => PaletteItemModel());
    paletteEditorBottomNavModel =
        createModel(context, () => PaletteEditorBottomNavModel());
  }

  void dispose() {
    bottomSheetTitleModel.dispose();
    paletteModel.dispose();
    typographyModel.dispose();
    imagesModel.dispose();
    buttonsModel.dispose();
    layoutModel.dispose();
    animationModel.dispose();
    themeBrowserModel.dispose();
    paletteItemModel1.dispose();
    paletteItemModel2.dispose();
    paletteItemModel3.dispose();
    paletteItemModel4.dispose();
    paletteItemModel5.dispose();
    paletteEditorBottomNavModel.dispose();
  }

  /// Additional helper methods are added here.

}
