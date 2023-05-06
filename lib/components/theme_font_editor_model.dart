import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/page_editor/edit_section/section_dropdown/section_dropdown_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ThemeFontEditorModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for FontFamily.
  late SectionDropdownModel fontFamilyModel1;
  // Model for FontFamily.
  late SectionDropdownModel fontFamilyModel2;
  // Model for FontFamily.
  late SectionDropdownModel fontFamilyModel3;
  // Model for FontFamily.
  late SectionDropdownModel fontFamilyModel4;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    fontFamilyModel1 = createModel(context, () => SectionDropdownModel());
    fontFamilyModel2 = createModel(context, () => SectionDropdownModel());
    fontFamilyModel3 = createModel(context, () => SectionDropdownModel());
    fontFamilyModel4 = createModel(context, () => SectionDropdownModel());
  }

  void dispose() {
    fontFamilyModel1.dispose();
    fontFamilyModel2.dispose();
    fontFamilyModel3.dispose();
    fontFamilyModel4.dispose();
  }

  /// Additional helper methods are added here.

}
