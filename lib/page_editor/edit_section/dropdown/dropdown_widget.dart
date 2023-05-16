import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dropdown_model.dart';
export 'dropdown_model.dart';

class DropdownWidget extends StatefulWidget {
  const DropdownWidget({
    Key? key,
    String? componentName,
    this.values,
    this.selectedValue,
    this.type,
  })  : this.componentName = componentName ?? 'Name',
        super(key: key);

  final String componentName;
  final dynamic values;
  final String? selectedValue;
  final String? type;

  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  late DropdownModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DropdownModel());
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
        Stack(
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
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: Text(
                            widget.componentName,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Nunito',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      setState(() {
                        _model.isSelecting = true;
                      });
                    },
                    child: Text(
                      'Arial',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.edit_rounded,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 20.0,
                    ),
                    onPressed: () async {
                      setState(() {
                        _model.isSelecting = true;
                      });
                    },
                  ),
                ],
              ),
            ),
            if (_model.isSelecting)
              Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: 63.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: Icon(
                        Icons.close,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 17.0,
                      ),
                      onPressed: () async {
                        setState(() {
                          _model.isSelecting = false;
                        });
                      },
                    ),
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: MediaQuery.of(context).size.height * 1.0,
                        child: custom_widgets.WheelPicker(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: MediaQuery.of(context).size.height * 1.0,
                          selectedValue: widget.selectedValue,
                          type: widget.type!,
                          values: widget.values,
                        ),
                      ),
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: FaIcon(
                        FontAwesomeIcons.check,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 15.0,
                      ),
                      onPressed: () async {
                        setState(() {
                          _model.isSelecting = false;
                        });
                      },
                    ),
                  ],
                ),
              ),
          ],
        ),
        Divider(
          height: 4.0,
          thickness: 2.0,
          color: FlutterFlowTheme.of(context).accent3,
        ),
      ],
    );
  }
}