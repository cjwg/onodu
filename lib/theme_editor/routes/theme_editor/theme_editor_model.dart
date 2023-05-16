import '/components/bottom_sheet_nav/bottom_sheet_nav_widget.dart';
import '/components/bottom_sheet_title/bottom_sheet_title_widget.dart';
import '/components/list_item/list_item_widget.dart';
import '/components/theme_font_editor_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/page_editor/edit_section/dropdown/dropdown_widget.dart';
import '/page_editor/edit_section/section_toggle/section_toggle_widget.dart';
import '/theme_editor/components/theme_gallery/theme_gallery_widget.dart';
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
  late ListItemModel typographyModel1;
  // Model for Layout.
  late ListItemModel layoutModel1;
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
  // Model for ThemeFontEditor component.
  late ThemeFontEditorModel themeFontEditorModel;
  // Model for BottomSheetNav component.
  late BottomSheetNavModel bottomSheetNavModel2;
  // Model for Padding.
  late DropdownModel paddingModel1;
  // Model for Padding.
  late DropdownModel paddingModel2;
  // Model for Padding.
  late DropdownModel paddingModel3;
  // Model for Padding.
  late DropdownModel paddingModel4;
  // Model for Padding.
  late DropdownModel paddingModel5;
  // Model for SectionToggle component.
  late SectionToggleModel sectionToggleModel1;
  // Model for SectionToggle component.
  late SectionToggleModel sectionToggleModel2;
  // Model for BottomSheetNav component.
  late BottomSheetNavModel bottomSheetNavModel3;
  // Model for Buttons.
  late ListItemModel buttonsModel;
  // Model for Typography.
  late ListItemModel typographyModel2;
  // Model for Layout.
  late ListItemModel layoutModel2;
  // Model for BottomSheetNav component.
  late BottomSheetNavModel bottomSheetNavModel4;
  // Model for BottomSheetNav component.
  late BottomSheetNavModel bottomSheetNavModel5;
  // Model for ThemeGallery component.
  late ThemeGalleryModel themeGalleryModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bottomSheetTitleModel = createModel(context, () => BottomSheetTitleModel());
    paletteModel = createModel(context, () => ListItemModel());
    typographyModel1 = createModel(context, () => ListItemModel());
    layoutModel1 = createModel(context, () => ListItemModel());
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
    themeFontEditorModel = createModel(context, () => ThemeFontEditorModel());
    bottomSheetNavModel2 = createModel(context, () => BottomSheetNavModel());
    paddingModel1 = createModel(context, () => DropdownModel());
    paddingModel2 = createModel(context, () => DropdownModel());
    paddingModel3 = createModel(context, () => DropdownModel());
    paddingModel4 = createModel(context, () => DropdownModel());
    paddingModel5 = createModel(context, () => DropdownModel());
    sectionToggleModel1 = createModel(context, () => SectionToggleModel());
    sectionToggleModel2 = createModel(context, () => SectionToggleModel());
    bottomSheetNavModel3 = createModel(context, () => BottomSheetNavModel());
    buttonsModel = createModel(context, () => ListItemModel());
    typographyModel2 = createModel(context, () => ListItemModel());
    layoutModel2 = createModel(context, () => ListItemModel());
    bottomSheetNavModel4 = createModel(context, () => BottomSheetNavModel());
    bottomSheetNavModel5 = createModel(context, () => BottomSheetNavModel());
    themeGalleryModel = createModel(context, () => ThemeGalleryModel());
  }

  void dispose() {
    bottomSheetTitleModel.dispose();
    paletteModel.dispose();
    typographyModel1.dispose();
    layoutModel1.dispose();
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
    themeFontEditorModel.dispose();
    bottomSheetNavModel2.dispose();
    paddingModel1.dispose();
    paddingModel2.dispose();
    paddingModel3.dispose();
    paddingModel4.dispose();
    paddingModel5.dispose();
    sectionToggleModel1.dispose();
    sectionToggleModel2.dispose();
    bottomSheetNavModel3.dispose();
    buttonsModel.dispose();
    typographyModel2.dispose();
    layoutModel2.dispose();
    bottomSheetNavModel4.dispose();
    bottomSheetNavModel5.dispose();
    themeGalleryModel.dispose();
  }

  /// Additional helper methods are added here.

}
