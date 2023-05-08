import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/page_editor/edit_section/section_dropdown/section_dropdown_widget.dart';
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
          height: 47.0,
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
                  useToggleButtonStyle: true,
                  labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Nunito',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                      ),
                  unselectedLabelStyle:
                      FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Nunito',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                          ),
                  labelColor: FlutterFlowTheme.of(context).primaryText,
                  unselectedLabelColor:
                      FlutterFlowTheme.of(context).primaryText,
                  backgroundColor:
                      FlutterFlowTheme.of(context).primaryBackground,
                  unselectedBackgroundColor:
                      FlutterFlowTheme.of(context).accent3,
                  borderColor: FlutterFlowTheme.of(context).accent3,
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
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.fontFamilyModel1,
                              updateCallback: () => setState(() {}),
                              child: SectionDropdownWidget(
                                componentName: 'Font family',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.fontFamilyModel2,
                              updateCallback: () => setState(() {}),
                              child: SectionDropdownWidget(
                                componentName: 'Size',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.fontFamilyModel3,
                              updateCallback: () => setState(() {}),
                              child: SectionDropdownWidget(
                                componentName: 'Style',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.fontFamilyModel4,
                              updateCallback: () => setState(() {}),
                              child: SectionDropdownWidget(
                                componentName: 'Weight',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.fontFamilyModel5,
                                  updateCallback: () => setState(() {}),
                                  child: SectionDropdownWidget(
                                    componentName: 'Font family',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.fontFamilyModel6,
                                  updateCallback: () => setState(() {}),
                                  child: SectionDropdownWidget(
                                    componentName: 'Size',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.fontFamilyModel7,
                                  updateCallback: () => setState(() {}),
                                  child: SectionDropdownWidget(
                                    componentName: 'Style',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.fontFamilyModel8,
                                  updateCallback: () => setState(() {}),
                                  child: SectionDropdownWidget(
                                    componentName: 'Weight',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.fontFamilyModel9,
                                  updateCallback: () => setState(() {}),
                                  child: SectionDropdownWidget(
                                    componentName: 'Font family',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.fontFamilyModel10,
                                  updateCallback: () => setState(() {}),
                                  child: SectionDropdownWidget(
                                    componentName: 'Size',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.fontFamilyModel11,
                                  updateCallback: () => setState(() {}),
                                  child: SectionDropdownWidget(
                                    componentName: 'Style',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.fontFamilyModel12,
                                  updateCallback: () => setState(() {}),
                                  child: SectionDropdownWidget(
                                    componentName: 'Weight',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
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
