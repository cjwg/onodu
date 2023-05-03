import '/components/bottom_sheet_title/bottom_sheet_title_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/page_editor/edit_section/section_color/section_color_widget.dart';
import '/page_editor/edit_section/section_dropdown/section_dropdown_widget.dart';
import '/page_editor/edit_section/section_toggle/section_toggle_widget.dart';
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
                      model: _model.sectionColorModel,
                      updateCallback: () => setState(() {}),
                      child: SectionColorWidget(
                        componentName: 'Background',
                      ),
                    ),
                  ),
                  Expanded(
                    child: wrapWithModel(
                      model: _model.sectionBackgroundImageModel,
                      updateCallback: () => setState(() {}),
                      child: SectionToggleWidget(
                        title: 'Use background image',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
                    child: wrapWithModel(
                      model: _model.sectionForegroundModel,
                      updateCallback: () => setState(() {}),
                      child: SectionColorWidget(
                        componentName: 'Foreground',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 15.0, 0.0),
                    child: wrapWithModel(
                      model: _model.sectionPaddingModel,
                      updateCallback: () => setState(() {}),
                      child: SectionDropdownWidget(
                        componentName: 'Padding',
                      ),
                    ),
                  ),
                  Expanded(
                    child: wrapWithModel(
                      model: _model.sectionFullHeightModel,
                      updateCallback: () => setState(() {}),
                      child: SectionToggleWidget(
                        title: 'Full height',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 15.0, 0.0),
                    child: wrapWithModel(
                      model: _model.sectionAlignmentModel,
                      updateCallback: () => setState(() {}),
                      child: SectionDropdownWidget(
                        componentName: 'Alignment',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 15.0, 0.0),
                    child: wrapWithModel(
                      model: _model.sectionAnimationModel,
                      updateCallback: () => setState(() {}),
                      child: SectionDropdownWidget(
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
