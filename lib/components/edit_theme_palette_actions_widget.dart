import '/components/action_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_theme_palette_actions_model.dart';
export 'edit_theme_palette_actions_model.dart';

class EditThemePaletteActionsWidget extends StatefulWidget {
  const EditThemePaletteActionsWidget({Key? key}) : super(key: key);

  @override
  _EditThemePaletteActionsWidgetState createState() =>
      _EditThemePaletteActionsWidgetState();
}

class _EditThemePaletteActionsWidgetState
    extends State<EditThemePaletteActionsWidget> {
  late EditThemePaletteActionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditThemePaletteActionsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 35.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 1.0,
        height: 80.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            wrapWithModel(
              model: _model.actionButtonModel1,
              updateCallback: () => setState(() {}),
              child: ActionButtonWidget(
                icon: FaIcon(
                  FontAwesomeIcons.undoAlt,
                  size: 25.0,
                ),
                title: 'Undo',
                action: () async {},
              ),
            ),
            wrapWithModel(
              model: _model.actionButtonModel2,
              updateCallback: () => setState(() {}),
              child: ActionButtonWidget(
                icon: Icon(
                  Icons.auto_awesome,
                  size: 25.0,
                ),
                title: 'Generate',
                action: () async {},
              ),
            ),
            wrapWithModel(
              model: _model.actionButtonModel3,
              updateCallback: () => setState(() {}),
              child: ActionButtonWidget(
                icon: FaIcon(
                  FontAwesomeIcons.redoAlt,
                  size: 25.0,
                ),
                title: 'Redo',
                action: () async {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
