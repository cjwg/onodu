import '/components/page_editor_bottom_sheet_actions_widget.dart';
import '/components/section_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PageEditorModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Section component.
  late SectionModel sectionModel;
  // Model for PageEditorBottomSheetActions component.
  late PageEditorBottomSheetActionsModel pageEditorBottomSheetActionsModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sectionModel = createModel(context, () => SectionModel());
    pageEditorBottomSheetActionsModel =
        createModel(context, () => PageEditorBottomSheetActionsModel());
  }

  void dispose() {
    sectionModel.dispose();
    pageEditorBottomSheetActionsModel.dispose();
  }

  /// Additional helper methods are added here.

}
