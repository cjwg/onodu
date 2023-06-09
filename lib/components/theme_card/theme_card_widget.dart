import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'theme_card_model.dart';
export 'theme_card_model.dart';

class ThemeCardWidget extends StatefulWidget {
  const ThemeCardWidget({
    Key? key,
    this.componentIcon,
    String? componentName,
  })  : this.componentName = componentName ?? 'Name',
        super(key: key);

  final Widget? componentIcon;
  final String componentName;

  @override
  _ThemeCardWidgetState createState() => _ThemeCardWidgetState();
}

class _ThemeCardWidgetState extends State<ThemeCardWidget> {
  late ThemeCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ThemeCardModel());
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
          Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: widget.componentIcon!,
            ),
          ),
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
          Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: Icon(
              Icons.chevron_right_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
          ),
        ],
      ),
    );
  }
}
