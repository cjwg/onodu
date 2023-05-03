import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'component_card_color_model.dart';
export 'component_card_color_model.dart';

class ComponentCardColorWidget extends StatefulWidget {
  const ComponentCardColorWidget({
    Key? key,
    String? componentName,
  })  : this.componentName = componentName ?? 'Name',
        super(key: key);

  final String componentName;

  @override
  _ComponentCardColorWidgetState createState() =>
      _ComponentCardColorWidgetState();
}

class _ComponentCardColorWidgetState extends State<ComponentCardColorWidget> {
  late ComponentCardColorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentCardColorModel());
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
      height: 60.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: 100.0,
              height: MediaQuery.of(context).size.height * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Text(
                widget.componentName,
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
            child: Container(
              width: 25.0,
              height: 25.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).error,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
            child: Container(
              width: 25.0,
              height: 25.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).error,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
            child: Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).primaryText,
                  width: 1.0,
                ),
              ),
              child: Container(
                width: 110.0,
                height: 110.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).error,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
            child: Container(
              width: 25.0,
              height: 25.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).error,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Container(
            width: 25.0,
            height: 25.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).error,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
