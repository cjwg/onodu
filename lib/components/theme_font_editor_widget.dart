import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'theme_font_editor_model.dart';
export 'theme_font_editor_model.dart';

class ThemeFontEditorWidget extends StatefulWidget {
  const ThemeFontEditorWidget({Key? key}) : super(key: key);

  @override
  _ThemeFontEditorWidgetState createState() => _ThemeFontEditorWidgetState();
}

class _ThemeFontEditorWidgetState extends State<ThemeFontEditorWidget> {
  late ThemeFontEditorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ThemeFontEditorModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 1.0,
          height: 55.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).accent3,
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: Column(
            children: [
              Align(
                alignment: Alignment(0.0, 0),
                child: FlutterFlowButtonTabBar(
                  useToggleButtonStyle: false,
                  labelStyle: FlutterFlowTheme.of(context).bodyMedium,
                  unselectedLabelStyle: FlutterFlowTheme.of(context).bodyMedium,
                  labelColor: FlutterFlowTheme.of(context).primaryText,
                  unselectedLabelColor:
                      FlutterFlowTheme.of(context).primaryText,
                  backgroundColor:
                      FlutterFlowTheme.of(context).primaryBackground,
                  borderWidth: 4.0,
                  borderRadius: 15.0,
                  elevation: 0.0,
                  buttonMargin:
                      EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 0.0),
                  tabs: [
                    Tab(
                      text: 'Heading',
                    ),
                    Tab(
                      text: 'Sub heading',
                    ),
                    Tab(
                      text: 'Body',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).info,
                        ),
                        child: Text(
                          'Tab View 1',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Nunito',
                                    fontSize: 32.0,
                                  ),
                        ),
                      ),
                    ),
                    Text(
                      'Tab View 2',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Nunito',
                            fontSize: 32.0,
                          ),
                    ),
                    Text(
                      'Tab View 3',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Nunito',
                            fontSize: 32.0,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
