import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'palette_item_model.dart';
export 'palette_item_model.dart';

class PaletteItemWidget extends StatefulWidget {
  const PaletteItemWidget({
    Key? key,
    this.backgroundColor,
    this.colorPicker,
  }) : super(key: key);

  final Color? backgroundColor;
  final Future<dynamic> Function()? colorPicker;

  @override
  _PaletteItemWidgetState createState() => _PaletteItemWidgetState();
}

class _PaletteItemWidgetState extends State<PaletteItemWidget> {
  late PaletteItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaletteItemModel());
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
      decoration: BoxDecoration(
        color: widget.backgroundColor,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              icon: Icon(
                Icons.lock_outlined,
                color: FlutterFlowTheme.of(context).primaryBackground,
                size: 20.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              icon: Icon(
                Icons.view_carousel_sharp,
                color: FlutterFlowTheme.of(context).primaryBackground,
                size: 20.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              icon: FaIcon(
                FontAwesomeIcons.eyeDropper,
                color: FlutterFlowTheme.of(context).primaryBackground,
                size: 20.0,
              ),
              onPressed: () async {
                await widget.colorPicker?.call();
              },
            ),
          ],
        ),
      ),
    );
  }
}
