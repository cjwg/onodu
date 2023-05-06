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
    bool? bottomRadius,
    bool? topRadius,
  })  : this.title = title ?? 'Name',
        this.bottomRadius = bottomRadius ?? false,
        this.topRadius = topRadius ?? false,
        super(key: key);

  final Widget? leftIcon;
  final String title;
  final Widget? rightIcon;
  final bool bottomRadius;
  final bool topRadius;

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
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Stack(
          children: [
            if (widget.topRadius)
              Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                ),
              ),
            if (widget.bottomRadius)
              Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0),
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(0.0),
                  ),
                ),
              ),
            if (!widget.bottomRadius && !widget.topRadius)
              Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: 60.0,
                decoration: BoxDecoration(),
              ),
            Container(
              width: MediaQuery.of(context).size.width * 1.0,
              height: 60.0,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: Container(
                            decoration: BoxDecoration(),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: widget.leftIcon!,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 100.0,
                            decoration: BoxDecoration(),
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  widget.title,
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 17.0, 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: widget.rightIcon!,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(
          height: 2.0,
          thickness: 4.0,
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
      ],
    );
  }
}
