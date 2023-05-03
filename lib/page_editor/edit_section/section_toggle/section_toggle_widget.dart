import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'section_toggle_model.dart';
export 'section_toggle_model.dart';

class SectionToggleWidget extends StatefulWidget {
  const SectionToggleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String? title;

  @override
  _SectionToggleWidgetState createState() => _SectionToggleWidgetState();
}

class _SectionToggleWidgetState extends State<SectionToggleWidget> {
  late SectionToggleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SectionToggleModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 17.0, 0.0),
      child: SwitchListTile(
        value: _model.switchListTileValue ??= false,
        onChanged: (newValue) async {
          setState(() => _model.switchListTileValue = newValue!);
        },
        title: Text(
          widget.title!,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Nunito',
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
        ),
        tileColor: FlutterFlowTheme.of(context).secondaryBackground,
        activeColor: FlutterFlowTheme.of(context).primaryText,
        dense: true,
        controlAffinity: ListTileControlAffinity.trailing,
        contentPadding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
      ),
    );
  }
}