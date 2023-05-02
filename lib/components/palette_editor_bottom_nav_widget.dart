import '/components/component_add/component_add_widget.dart';
import '/components/theme_settings/theme_settings_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'palette_editor_bottom_nav_model.dart';
export 'palette_editor_bottom_nav_model.dart';

class PaletteEditorBottomNavWidget extends StatefulWidget {
  const PaletteEditorBottomNavWidget({Key? key}) : super(key: key);

  @override
  _PaletteEditorBottomNavWidgetState createState() =>
      _PaletteEditorBottomNavWidgetState();
}

class _PaletteEditorBottomNavWidgetState
    extends State<PaletteEditorBottomNavWidget> {
  late PaletteEditorBottomNavModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaletteEditorBottomNavModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              icon: FaIcon(
                FontAwesomeIcons.undoAlt,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 23.0,
              ),
              onPressed: () async {
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  enableDrag: false,
                  context: context,
                  builder: (bottomSheetContext) {
                    return Padding(
                      padding: MediaQuery.of(bottomSheetContext).viewInsets,
                      child: Container(
                        height: 500.0,
                        child: ThemeSettingsWidget(),
                      ),
                    );
                  },
                ).then((value) => setState(() {}));
              },
            ),
            Text(
              'Undo',
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    fontFamily: 'Nunito',
                    fontSize: 11.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              icon: Icon(
                FFIcons.kentertainmentLeisureChessPieceDice,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 23.0,
              ),
              onPressed: () async {
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  enableDrag: false,
                  context: context,
                  builder: (bottomSheetContext) {
                    return Padding(
                      padding: MediaQuery.of(bottomSheetContext).viewInsets,
                      child: Container(
                        height: 500.0,
                        child: ComponentAddWidget(),
                      ),
                    );
                  },
                ).then((value) => setState(() {}));
              },
            ),
            Text(
              'Generate',
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    fontFamily: 'Nunito',
                    fontSize: 11.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              icon: FaIcon(
                FontAwesomeIcons.redoAlt,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 23.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
            Text(
              'Redo',
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    fontFamily: 'Nunito',
                    fontSize: 11.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
