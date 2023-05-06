import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'section_dropdown_model.dart';
export 'section_dropdown_model.dart';

class SectionDropdownWidget extends StatefulWidget {
  const SectionDropdownWidget({
    Key? key,
    String? componentName,
  })  : this.componentName = componentName ?? 'Name',
        super(key: key);

  final String componentName;

  @override
  _SectionDropdownWidgetState createState() => _SectionDropdownWidgetState();
}

class _SectionDropdownWidgetState extends State<SectionDropdownWidget> {
  late SectionDropdownModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SectionDropdownModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 1.0,
          height: 63.0,
          decoration: BoxDecoration(),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width: 100.0,
                  height: MediaQuery.of(context).size.height * 1.0,
                  decoration: BoxDecoration(),
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                      child: Text(
                        widget.componentName,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Nunito',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 90.0,
                decoration: BoxDecoration(),
                child: Align(
                  alignment: AlignmentDirectional(1.0, 0.0),
                  child: FlutterFlowDropDown<String>(
                    controller: _model.dropDownValueController ??=
                        FormFieldController<String>(
                      _model.dropDownValue ??= '',
                    ),
                    options: <String>[],
                    optionLabels: <String>[],
                    onChanged: (val) =>
                        setState(() => _model.dropDownValue = val),
                    width: 180.0,
                    height: 30.0,
                    searchHintTextStyle:
                        FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Nunito',
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Nunito',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                    hintText: 'None',
                    searchHintText: 'Search for an item...',
                    elevation: 2.0,
                    borderColor: Colors.transparent,
                    borderWidth: 0.0,
                    borderRadius: 0.0,
                    margin: EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 0.0, 4.0),
                    hidesUnderline: true,
                    isSearchable: false,
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          height: 4.0,
          thickness: 3.0,
          color: FlutterFlowTheme.of(context).accent4,
        ),
      ],
    );
  }
}
