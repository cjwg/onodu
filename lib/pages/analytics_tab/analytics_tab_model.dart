import '/components/list_card/list_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AnalyticsTabModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for ListCard component.
  late ListCardModel listCardModel1;
  // Model for ListCard component.
  late ListCardModel listCardModel2;
  // Model for ListCard component.
  late ListCardModel listCardModel3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    listCardModel1 = createModel(context, () => ListCardModel());
    listCardModel2 = createModel(context, () => ListCardModel());
    listCardModel3 = createModel(context, () => ListCardModel());
  }

  void dispose() {
    listCardModel1.dispose();
    listCardModel2.dispose();
    listCardModel3.dispose();
  }

  /// Additional helper methods are added here.

}
