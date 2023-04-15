import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ResetPasswordModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for EmailTextField widget.
  TextEditingController? emailTextFieldController;
  late bool emailTextFieldVisibility;
  String? Function(BuildContext, String?)? emailTextFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    emailTextFieldVisibility = false;
  }

  void dispose() {
    emailTextFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
