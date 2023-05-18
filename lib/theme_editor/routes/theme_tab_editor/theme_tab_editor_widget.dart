import '/components/bottom_sheet_nav/bottom_sheet_nav_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/theme_editor/palette_item/palette_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'theme_tab_editor_model.dart';
export 'theme_tab_editor_model.dart';

class ThemeTabEditorWidget extends StatefulWidget {
  const ThemeTabEditorWidget({Key? key}) : super(key: key);

  @override
  _ThemeTabEditorWidgetState createState() => _ThemeTabEditorWidgetState();
}

class _ThemeTabEditorWidgetState extends State<ThemeTabEditorWidget> {
  late ThemeTabEditorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ThemeTabEditorModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Column(
        children: [
          Expanded(
            child: TabBarView(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      wrapWithModel(
                        model: _model.bottomSheetNavModel,
                        updateCallback: () => setState(() {}),
                        child: BottomSheetNavWidget(
                          navigateBack: () async {},
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              25.0, 0.0, 25.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(0.0),
                              topLeft: Radius.circular(25.0),
                              topRight: Radius.circular(25.0),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(25.0),
                                  topRight: Radius.circular(25.0),
                                ),
                              ),
                              child: wrapWithModel(
                                model: _model.paletteItemModel1,
                                updateCallback: () => setState(() {}),
                                updateOnChange: true,
                                child: PaletteItemWidget(
                                  backgroundColor: Color(0xFF022B3A),
                                  colorPicker: () async {},
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              25.0, 0.0, 25.0, 0.0),
                          child: wrapWithModel(
                            model: _model.paletteItemModel2,
                            updateCallback: () => setState(() {}),
                            child: PaletteItemWidget(
                              backgroundColor: Color(0xFFA3C4BC),
                              colorPicker: () async {},
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              25.0, 0.0, 25.0, 0.0),
                          child: wrapWithModel(
                            model: _model.paletteItemModel3,
                            updateCallback: () => setState(() {}),
                            child: PaletteItemWidget(
                              backgroundColor: Color(0xFFBFD7B5),
                              colorPicker: () async {},
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              25.0, 0.0, 25.0, 0.0),
                          child: wrapWithModel(
                            model: _model.paletteItemModel4,
                            updateCallback: () => setState(() {}),
                            child: PaletteItemWidget(
                              backgroundColor: Color(0xFFE7EFC5),
                              colorPicker: () async {},
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              25.0, 0.0, 25.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(25.0),
                                  bottomRight: Radius.circular(25.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                              ),
                              child: wrapWithModel(
                                model: _model.paletteItemModel5,
                                updateCallback: () => setState(() {}),
                                child: PaletteItemWidget(
                                  backgroundColor: Color(0xFFF2DDA4),
                                  colorPicker: () async {},
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
          Align(
            alignment: Alignment(0.0, 0),
            child: FlutterFlowButtonTabBar(
              useToggleButtonStyle: true,
              labelStyle: FlutterFlowTheme.of(context).titleMedium,
              unselectedLabelStyle: FlutterFlowTheme.of(context).titleMedium,
              labelColor: FlutterFlowTheme.of(context).primaryText,
              unselectedLabelColor: FlutterFlowTheme.of(context).secondaryText,
              backgroundColor: FlutterFlowTheme.of(context).accent1,
              unselectedBackgroundColor: FlutterFlowTheme.of(context).alternate,
              borderColor: FlutterFlowTheme.of(context).primary,
              unselectedBorderColor: FlutterFlowTheme.of(context).alternate,
              borderWidth: 2.0,
              borderRadius: 8.0,
              elevation: 0.0,
              buttonMargin: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              padding: EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
              tabs: [
                Tab(
                  text: 'Example 1',
                ),
                Tab(
                  text: 'Example 2',
                ),
                Tab(
                  text: 'Example 3',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
