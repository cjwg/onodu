import '/components/bottom_sheet_nav/bottom_sheet_nav_widget.dart';
import '/components/bottom_sheet_title/bottom_sheet_title_widget.dart';
import '/components/list_item/list_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/theme_editor/edit_theme_palette_actions/edit_theme_palette_actions_widget.dart';
import '/theme_editor/palette_item/palette_item_widget.dart';
import '/theme_editor/routes/edit_theme_actions/edit_theme_actions_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ThemeEditorModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  int? pageViewIndex = 0;

  String currentThemeProperties = 'palette';

  ///  State fields for stateful widgets in this component.

  // State field(s) for PageView widget.
  PageController? pageViewController;
  // Model for BottomSheetTitle component.
  late BottomSheetTitleModel bottomSheetTitleModel;
  // Model for Palette.
  late ListItemModel paletteModel;
  // Model for Typography.
  late ListItemModel typographyModel;
  // Model for Layout.
  late ListItemModel layoutModel;
  // Model for Elements.
  late ListItemModel elementsModel;
  // Model for Animation.
  late ListItemModel animationModel;
  // Model for ThemeBrowser.
  late ListItemModel themeBrowserModel;
  // Model for EditThemeActions component.
  late EditThemeActionsModel editThemeActionsModel;
  // Model for BottomSheetNav component.
  late BottomSheetNavModel bottomSheetNavModel1;
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
  // Model for EditThemePaletteActions component.
  late EditThemePaletteActionsModel editThemePaletteActionsModel;
  // Model for Nav.
  late BottomSheetNavModel navModel;
  // Model for BottomSheetNav component.
  late BottomSheetNavModel bottomSheetNavModel2;
  // Model for BottomSheetNav component.
  late BottomSheetNavModel bottomSheetNavModel3;
  // Model for BottomSheetNav component.
  late BottomSheetNavModel bottomSheetNavModel4;
  // Model for BottomSheetNav component.
  late BottomSheetNavModel bottomSheetNavModel5;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bottomSheetTitleModel = createModel(context, () => BottomSheetTitleModel());
    paletteModel = createModel(context, () => ListItemModel());
    typographyModel = createModel(context, () => ListItemModel());
    layoutModel = createModel(context, () => ListItemModel());
    elementsModel = createModel(context, () => ListItemModel());
    animationModel = createModel(context, () => ListItemModel());
    themeBrowserModel = createModel(context, () => ListItemModel());
    editThemeActionsModel = createModel(context, () => EditThemeActionsModel());
    bottomSheetNavModel1 = createModel(context, () => BottomSheetNavModel());
    paletteItemModel1 = createModel(context, () => PaletteItemModel());
    paletteItemModel2 = createModel(context, () => PaletteItemModel());
    paletteItemModel3 = createModel(context, () => PaletteItemModel());
    paletteItemModel4 = createModel(context, () => PaletteItemModel());
    paletteItemModel5 = createModel(context, () => PaletteItemModel());
    editThemePaletteActionsModel =
        createModel(context, () => EditThemePaletteActionsModel());
    navModel = createModel(context, () => BottomSheetNavModel());
    bottomSheetNavModel2 = createModel(context, () => BottomSheetNavModel());
    bottomSheetNavModel3 = createModel(context, () => BottomSheetNavModel());
    bottomSheetNavModel4 = createModel(context, () => BottomSheetNavModel());
    bottomSheetNavModel5 = createModel(context, () => BottomSheetNavModel());
  }

  void dispose() {
    bottomSheetTitleModel.dispose();
    paletteModel.dispose();
    typographyModel.dispose();
    layoutModel.dispose();
    elementsModel.dispose();
    animationModel.dispose();
    themeBrowserModel.dispose();
    editThemeActionsModel.dispose();
    bottomSheetNavModel1.dispose();
    paletteItemModel1.dispose();
    paletteItemModel2.dispose();
    paletteItemModel3.dispose();
    paletteItemModel4.dispose();
    paletteItemModel5.dispose();
    editThemePaletteActionsModel.dispose();
    navModel.dispose();
    bottomSheetNavModel2.dispose();
    bottomSheetNavModel3.dispose();
    bottomSheetNavModel4.dispose();
    bottomSheetNavModel5.dispose();
  }

  /// Additional helper methods are added here.

}
