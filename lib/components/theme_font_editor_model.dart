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
  // Model for Size.
  late SectionDropdownModel sizeModel;
  // Model for Style.
  late SectionDropdownModel styleModel;
  // Model for Weight.
  late SectionDropdownModel weightModel;
  // Model for LineHeight.
  late SectionDropdownModel lineHeightModel;
  // Model for TextAlignment.
  late SectionDropdownModel textAlignmentModel;
  // Model for FontFamily.
  late SectionDropdownModel fontFamilyModel2;
  // Model for FontFamily.
  late SectionDropdownModel fontFamilyModel3;
  // Model for FontFamily.
  late SectionDropdownModel fontFamilyModel4;
  // Model for FontFamily.
  late SectionDropdownModel fontFamilyModel5;
  // Model for FontFamily.
  late SectionDropdownModel fontFamilyModel6;
  // Model for FontFamily.
  late SectionDropdownModel fontFamilyModel7;
  // Model for FontFamily.
  late SectionDropdownModel fontFamilyModel8;
  // Model for FontFamily.
  late SectionDropdownModel fontFamilyModel9;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    fontFamilyModel1 = createModel(context, () => SectionDropdownModel());
    sizeModel = createModel(context, () => SectionDropdownModel());
    styleModel = createModel(context, () => SectionDropdownModel());
    weightModel = createModel(context, () => SectionDropdownModel());
    lineHeightModel = createModel(context, () => SectionDropdownModel());
    textAlignmentModel = createModel(context, () => SectionDropdownModel());
    fontFamilyModel2 = createModel(context, () => SectionDropdownModel());
    fontFamilyModel3 = createModel(context, () => SectionDropdownModel());
    fontFamilyModel4 = createModel(context, () => SectionDropdownModel());
    fontFamilyModel5 = createModel(context, () => SectionDropdownModel());
    fontFamilyModel6 = createModel(context, () => SectionDropdownModel());
    fontFamilyModel7 = createModel(context, () => SectionDropdownModel());
    fontFamilyModel8 = createModel(context, () => SectionDropdownModel());
    fontFamilyModel9 = createModel(context, () => SectionDropdownModel());
  }

  void dispose() {
    fontFamilyModel1.dispose();
    sizeModel.dispose();
    styleModel.dispose();
    weightModel.dispose();
    lineHeightModel.dispose();
    textAlignmentModel.dispose();
    fontFamilyModel2.dispose();
    fontFamilyModel3.dispose();
    fontFamilyModel4.dispose();
    fontFamilyModel5.dispose();
    fontFamilyModel6.dispose();
    fontFamilyModel7.dispose();
    fontFamilyModel8.dispose();
    fontFamilyModel9.dispose();
  }

  /// Additional helper methods are added here.

}
