import '/components/action_button/action_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/page_editor/add_component/add_component/add_component_widget.dart';
import '/theme_editor/routes/theme_editor/theme_editor_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'page_editor_actions_model.dart';
export 'page_editor_actions_model.dart';

class PageEditorActionsWidget extends StatefulWidget {
  const PageEditorActionsWidget({Key? key}) : super(key: key);

  @override
  _PageEditorActionsWidgetState createState() =>
      _PageEditorActionsWidgetState();
}

class _PageEditorActionsWidgetState extends State<PageEditorActionsWidget> {
  late PageEditorActionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageEditorActionsModel());
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
                  context: context,
                  builder: (bottomSheetContext) {
                    return Padding(
                      padding: MediaQuery.of(bottomSheetContext).viewInsets,
                      child: Container(
                        height: 620.0,
                        child: ThemeEditorWidget(),
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
                        child: AddComponentWidget(),
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
    );
  }
}
