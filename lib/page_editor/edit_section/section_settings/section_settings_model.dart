import '/components/bottom_sheet_title/bottom_sheet_title_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/page_editor/edit_section/dropdown/dropdown_widget.dart';
import '/page_editor/edit_section/section_color/section_color_widget.dart';
import '/page_editor/edit_section/section_toggle/section_toggle_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SectionSettingsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for BottomSheetTitle component.
  late BottomSheetTitleModel bottomSheetTitleModel;
  // Model for SectionColor component.
  late SectionColorModel sectionColorModel;
  // Model for SectionBackgroundImage.
  late SectionToggleModel sectionBackgroundImageModel;
  // Model for SectionForeground.
  late SectionColorModel sectionForegroundModel;
  // Model for SectionPadding.
  late DropdownModel sectionPaddingModel;
  // Model for SectionFullHeight.
  late SectionToggleModel sectionFullHeightModel;
  // Model for SectionAlignment.
  late DropdownModel sectionAlignmentModel;
  // Model for SectionAnimation.
  late DropdownModel sectionAnimationModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bottomSheetTitleModel = createModel(context, () => BottomSheetTitleModel());
    sectionColorModel = createModel(context, () => SectionColorModel());
    sectionBackgroundImageModel =
        createModel(context, () => SectionToggleModel());
    sectionForegroundModel = createModel(context, () => SectionColorModel());
    sectionPaddingModel = createModel(context, () => DropdownModel());
    sectionFullHeightModel = createModel(context, () => SectionToggleModel());
    sectionAlignmentModel = createModel(context, () => DropdownModel());
    sectionAnimationModel = createModel(context, () => DropdownModel());
  }

  void dispose() {
    bottomSheetTitleModel.dispose();
    sectionColorModel.dispose();
    sectionBackgroundImageModel.dispose();
    sectionForegroundModel.dispose();
    sectionPaddingModel.dispose();
    sectionFullHeightModel.dispose();
    sectionAlignmentModel.dispose();
    sectionAnimationModel.dispose();
  }

  /// Additional helper methods are added here.

}
