import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/page_editor/edit_section/dropdown/dropdown_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ThemeFontEditorModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for FontFamily.
  late DropdownModel fontFamilyModel1;
  // Model for Size.
  late DropdownModel sizeModel;
  // Model for Style.
  late DropdownModel styleModel;
  // Model for Weight.
  late DropdownModel weightModel;
  // Model for LineHeight.
  late DropdownModel lineHeightModel;
  // Model for TextAlignment.
  late DropdownModel textAlignmentModel;
  // Model for FontFamily.
  late DropdownModel fontFamilyModel2;
  // Model for FontFamily.
  late DropdownModel fontFamilyModel3;
  // Model for FontFamily.
  late DropdownModel fontFamilyModel4;
  // Model for FontFamily.
  late DropdownModel fontFamilyModel5;
  // Model for FontFamily.
  late DropdownModel fontFamilyModel6;
  // Model for FontFamily.
  late DropdownModel fontFamilyModel7;
  // Model for FontFamily.
  late DropdownModel fontFamilyModel8;
  // Model for FontFamily.
  late DropdownModel fontFamilyModel9;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    fontFamilyModel1 = createModel(context, () => DropdownModel());
    sizeModel = createModel(context, () => DropdownModel());
    styleModel = createModel(context, () => DropdownModel());
    weightModel = createModel(context, () => DropdownModel());
    lineHeightModel = createModel(context, () => DropdownModel());
    textAlignmentModel = createModel(context, () => DropdownModel());
    fontFamilyModel2 = createModel(context, () => DropdownModel());
    fontFamilyModel3 = createModel(context, () => DropdownModel());
    fontFamilyModel4 = createModel(context, () => DropdownModel());
    fontFamilyModel5 = createModel(context, () => DropdownModel());
    fontFamilyModel6 = createModel(context, () => DropdownModel());
    fontFamilyModel7 = createModel(context, () => DropdownModel());
    fontFamilyModel8 = createModel(context, () => DropdownModel());
    fontFamilyModel9 = createModel(context, () => DropdownModel());
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
