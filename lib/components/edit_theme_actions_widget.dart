import '/components/action_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_theme_actions_model.dart';
export 'edit_theme_actions_model.dart';

class EditThemeActionsWidget extends StatefulWidget {
  const EditThemeActionsWidget({Key? key}) : super(key: key);

  @override
  _EditThemeActionsWidgetState createState() => _EditThemeActionsWidgetState();
}

class _EditThemeActionsWidgetState extends State<EditThemeActionsWidget> {
  late EditThemeActionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditThemeActionsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1.0,
      height: 80.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: wrapWithModel(
              model: _model.actionButtonModel1,
              updateCallback: () => setState(() {}),
              child: ActionButtonWidget(
                action: () async {},
              ),
            ),
          ),
          Expanded(
            child: wrapWithModel(
              model: _model.actionButtonModel2,
              updateCallback: () => setState(() {}),
              child: ActionButtonWidget(
                action: () async {},
              ),
            ),
          ),
          Expanded(
            child: wrapWithModel(
              model: _model.actionButtonModel3,
              updateCallback: () => setState(() {}),
              child: ActionButtonWidget(
                title: 'Save',
                action: () async {},
              ),
            ),
          ),
          Expanded(
            child: wrapWithModel(
              model: _model.actionButtonModel4,
              updateCallback: () => setState(() {}),
              child: ActionButtonWidget(
                title: 'Duplicate',
                action: () async {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
