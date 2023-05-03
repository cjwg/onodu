import '/components/bottom_sheet_title/bottom_sheet_title_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/page_editor/add_component/component_card_animation/component_card_animation_widget.dart';
import '/page_editor/edit_section/component_card_color/component_card_color_widget.dart';
import '/page_editor/edit_section/component_card_padding/component_card_padding_widget.dart';
import '/page_editor/edit_section/component_card_vertical_alignment/component_card_vertical_alignment_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SectionSettingsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for BottomSheetTitle component.
  late BottomSheetTitleModel bottomSheetTitleModel;
  // Model for ComponentCardColor component.
  late ComponentCardColorModel componentCardColorModel1;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue1;
  // Model for ComponentCardColor component.
  late ComponentCardColorModel componentCardColorModel2;
  // Model for ComponentCardPadding component.
  late ComponentCardPaddingModel componentCardPaddingModel;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue2;
  // Model for ComponentCardVerticalAlignment component.
  late ComponentCardVerticalAlignmentModel componentCardVerticalAlignmentModel;
  // Model for ComponentCardAnimation component.
  late ComponentCardAnimationModel componentCardAnimationModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bottomSheetTitleModel = createModel(context, () => BottomSheetTitleModel());
    componentCardColorModel1 =
        createModel(context, () => ComponentCardColorModel());
    componentCardColorModel2 =
        createModel(context, () => ComponentCardColorModel());
    componentCardPaddingModel =
        createModel(context, () => ComponentCardPaddingModel());
    componentCardVerticalAlignmentModel =
        createModel(context, () => ComponentCardVerticalAlignmentModel());
    componentCardAnimationModel =
        createModel(context, () => ComponentCardAnimationModel());
  }

  void dispose() {
    bottomSheetTitleModel.dispose();
    componentCardColorModel1.dispose();
    componentCardColorModel2.dispose();
    componentCardPaddingModel.dispose();
    componentCardVerticalAlignmentModel.dispose();
    componentCardAnimationModel.dispose();
  }

  /// Additional helper methods are added here.

}
