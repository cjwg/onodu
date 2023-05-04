import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bottom_sheet_nav_model.dart';
export 'bottom_sheet_nav_model.dart';

class BottomSheetNavWidget extends StatefulWidget {
  const BottomSheetNavWidget({
    Key? key,
    String? text,
  })  : this.text = text ?? 'Title',
        super(key: key);

  final String text;

  @override
  _BottomSheetNavWidgetState createState() => _BottomSheetNavWidgetState();
}

class _BottomSheetNavWidgetState extends State<BottomSheetNavWidget> {
  late BottomSheetNavModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomSheetNavModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 7.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              icon: Icon(
                FFIcons.kinterfaceArrowsButtonLeft,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 20.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 10.0),
            child: Text(
              widget.text,
              style: FlutterFlowTheme.of(context).titleMedium.override(
                    fontFamily: 'Nunito',
                    fontSize: 22.0,
                    fontWeight: FontWeight.w800,
                  ),
            ),
          ),
          Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(),
          ),
        ],
      ),
    );
  }
}
