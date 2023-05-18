import '/components/bottom_sheet_nav/bottom_sheet_nav_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/theme_editor/palette_item/palette_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ThemeTabEditorModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for BottomSheetNav component.
  late BottomSheetNavModel bottomSheetNavModel;
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

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bottomSheetNavModel = createModel(context, () => BottomSheetNavModel());
    paletteItemModel1 = createModel(context, () => PaletteItemModel());
    paletteItemModel2 = createModel(context, () => PaletteItemModel());
    paletteItemModel3 = createModel(context, () => PaletteItemModel());
    paletteItemModel4 = createModel(context, () => PaletteItemModel());
    paletteItemModel5 = createModel(context, () => PaletteItemModel());
  }

  void dispose() {
    bottomSheetNavModel.dispose();
    paletteItemModel1.dispose();
    paletteItemModel2.dispose();
    paletteItemModel3.dispose();
    paletteItemModel4.dispose();
    paletteItemModel5.dispose();
  }

  /// Additional helper methods are added here.

}
