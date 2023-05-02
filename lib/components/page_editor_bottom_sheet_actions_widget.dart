import '/components/action_button_widget.dart';
import '/components/component_add/component_add_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/themes/components/theme_settings/theme_settings_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'page_editor_bottom_sheet_actions_model.dart';
export 'page_editor_bottom_sheet_actions_model.dart';

class PageEditorBottomSheetActionsWidget extends StatefulWidget {
  const PageEditorBottomSheetActionsWidget({Key? key}) : super(key: key);

  @override
  _PageEditorBottomSheetActionsWidgetState createState() =>
      _PageEditorBottomSheetActionsWidgetState();
}

class _PageEditorBottomSheetActionsWidgetState
    extends State<PageEditorBottomSheetActionsWidget> {
  late PageEditorBottomSheetActionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageEditorBottomSheetActionsModel());
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
                icon: Icon(
                  FFIcons.kinterfaceEditFlipLeftCircle,
                  size: 27.0,
                ),
                title: 'Theme',
                action: () async {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    enableDrag: false,
                    context: context,
                    builder: (bottomSheetContext) {
                      return Padding(
                        padding: MediaQuery.of(bottomSheetContext).viewInsets,
                        child: Container(
                          height: 620.0,
                          child: ThemeSettingsWidget(),
                        ),
                      );
                    },
                  ).then((value) => setState(() {}));
                },
              ),
            ),
            wrapWithModel(
              model: _model.actionButtonModel2,
              updateCallback: () => setState(() {}),
              child: ActionButtonWidget(
                icon: Icon(
                  FFIcons.kinterfaceAdd21,
                  size: 25.0,
                ),
                title: 'Add',
                action: () async {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    enableDrag: false,
                    context: context,
                    builder: (bottomSheetContext) {
                      return Padding(
                        padding: MediaQuery.of(bottomSheetContext).viewInsets,
                        child: Container(
                          height: 620.0,
                          child: ComponentAddWidget(),
                        ),
                      );
                    },
                  ).then((value) => setState(() {}));
                },
              ),
            ),
            wrapWithModel(
              model: _model.actionButtonModel3,
              updateCallback: () => setState(() {}),
              child: ActionButtonWidget(
                icon: Icon(
                  Icons.public,
                  size: 30.0,
                ),
                title: 'Publish',
                action: () async {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
