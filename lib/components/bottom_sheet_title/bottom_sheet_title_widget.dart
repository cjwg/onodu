import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bottom_sheet_title_model.dart';
export 'bottom_sheet_title_model.dart';

class BottomSheetTitleWidget extends StatefulWidget {
  const BottomSheetTitleWidget({
    Key? key,
    String? text,
  })  : this.text = text ?? 'Title',
        super(key: key);

  final String text;

  @override
  _BottomSheetTitleWidgetState createState() => _BottomSheetTitleWidgetState();
}

class _BottomSheetTitleWidgetState extends State<BottomSheetTitleWidget> {
  late BottomSheetTitleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomSheetTitleModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(25.0, 25.0, 0.0, 18.0),
            child: Text(
              widget.text,
              textAlign: TextAlign.start,
              style: FlutterFlowTheme.of(context).displaySmall.override(
                    fontFamily: 'Nunito',
                    fontSize: 26.0,
                    fontWeight: FontWeight.w800,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
