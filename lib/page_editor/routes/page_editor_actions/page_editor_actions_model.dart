import '/components/action_button/action_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/page_editor/add_component/add_component/add_component_widget.dart';
import '/theme_editor/routes/theme_tab_editor/theme_tab_editor_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PageEditorActionsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for ActionButton component.
  late ActionButtonModel actionButtonModel1;
  // Model for ActionButton component.
  late ActionButtonModel actionButtonModel2;
  // Model for ActionButton component.
  late ActionButtonModel actionButtonModel3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    actionButtonModel1 = createModel(context, () => ActionButtonModel());
    actionButtonModel2 = createModel(context, () => ActionButtonModel());
    actionButtonModel3 = createModel(context, () => ActionButtonModel());
  }

  void dispose() {
    actionButtonModel1.dispose();
    actionButtonModel2.dispose();
    actionButtonModel3.dispose();
  }

  /// Additional helper methods are added here.

}
