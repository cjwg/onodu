import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'list_item_model.dart';
export 'list_item_model.dart';

class ListItemWidget extends StatefulWidget {
  const ListItemWidget({
    Key? key,
    this.leftIcon,
    String? title,
    this.rightIcon,
  })  : this.title = title ?? 'Name',
        super(key: key);

  final Widget? leftIcon;
  final String title;
  final Widget? rightIcon;

  @override
  _ListItemWidgetState createState() => _ListItemWidgetState();
}

class _ListItemWidgetState extends State<ListItemWidget> {
  late ListItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListItemModel());
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
      height: 55.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 60.0,
            decoration: BoxDecoration(),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: widget.leftIcon!,
            ),
          ),
          Expanded(
            child: Container(
              width: 100.0,
              decoration: BoxDecoration(),
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Align(
                alignment: AlignmentDirectional(-1.1, 0.0),
                child: Text(
                  widget.title,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Nunito',
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ),
          ),
          Container(
            width: 60.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: widget.rightIcon!,
            ),
          ),
        ],
      ),
    );
  }
}
