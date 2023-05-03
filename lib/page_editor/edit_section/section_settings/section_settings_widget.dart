import '/components/bottom_sheet_title/bottom_sheet_title_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/page_editor/add_component/component_card_animation/component_card_animation_widget.dart';
import '/page_editor/edit_section/component_card_color/component_card_color_widget.dart';
import '/page_editor/edit_section/component_card_padding/component_card_padding_widget.dart';
import '/page_editor/edit_section/component_card_vertical_alignment/component_card_vertical_alignment_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'section_settings_model.dart';
export 'section_settings_model.dart';

class SectionSettingsWidget extends StatefulWidget {
  const SectionSettingsWidget({Key? key}) : super(key: key);

  @override
  _SectionSettingsWidgetState createState() => _SectionSettingsWidgetState();
}

class _SectionSettingsWidgetState extends State<SectionSettingsWidget> {
  late SectionSettingsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SectionSettingsModel());
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
      height: 1000.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          wrapWithModel(
            model: _model.bottomSheetTitleModel,
            updateCallback: () => setState(() {}),
            child: BottomSheetTitleWidget(
              text: 'Edit section',
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
                    child: wrapWithModel(
                      model: _model.componentCardColorModel1,
                      updateCallback: () => setState(() {}),
                      child: ComponentCardColorWidget(
                        componentName: 'Background',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 17.0, 0.0),
                    child: SwitchListTile(
                      value: _model.switchListTileValue1 ??= false,
                      onChanged: (newValue) async {
                        setState(() => _model.switchListTileValue1 = newValue!);
                      },
                      title: Text(
                        'Use background image',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      activeColor: FlutterFlowTheme.of(context).primaryText,
                      dense: true,
                      controlAffinity: ListTileControlAffinity.trailing,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
                    child: wrapWithModel(
                      model: _model.componentCardColorModel2,
                      updateCallback: () => setState(() {}),
                      child: ComponentCardColorWidget(
                        componentName: 'Foreground',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 15.0, 0.0),
                    child: wrapWithModel(
                      model: _model.componentCardPaddingModel,
                      updateCallback: () => setState(() {}),
                      child: ComponentCardPaddingWidget(
                        componentName: 'Padding',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 17.0, 0.0),
                    child: SwitchListTile(
                      value: _model.switchListTileValue2 ??= false,
                      onChanged: (newValue) async {
                        setState(() => _model.switchListTileValue2 = newValue!);
                      },
                      title: Text(
                        'Full height',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      activeColor: FlutterFlowTheme.of(context).primaryText,
                      dense: true,
                      controlAffinity: ListTileControlAffinity.trailing,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 15.0, 0.0),
                    child: wrapWithModel(
                      model: _model.componentCardVerticalAlignmentModel,
                      updateCallback: () => setState(() {}),
                      child: ComponentCardVerticalAlignmentWidget(
                        componentName: 'Vertical alignment',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 15.0, 0.0),
                    child: wrapWithModel(
                      model: _model.componentCardAnimationModel,
                      updateCallback: () => setState(() {}),
                      child: ComponentCardAnimationWidget(
                        componentName: 'Animation',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
