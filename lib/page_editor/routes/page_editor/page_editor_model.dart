import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/page_editor/routes/page_editor_actions/page_editor_actions_widget.dart';
import '/page_editor/routes/section/section_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PageEditorModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Section component.
  late SectionModel sectionModel;
  // Model for PageEditorActions component.
  late PageEditorActionsModel pageEditorActionsModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sectionModel = createModel(context, () => SectionModel());
    pageEditorActionsModel =
        createModel(context, () => PageEditorActionsModel());
  }

  void dispose() {
    sectionModel.dispose();
    pageEditorActionsModel.dispose();
  }

  /// Additional helper methods are added here.

}
