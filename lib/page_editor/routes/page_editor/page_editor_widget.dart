import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/page_editor/routes/page_editor_actions/page_editor_actions_widget.dart';
import '/page_editor/routes/section/section_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'page_editor_model.dart';
export 'page_editor_model.dart';

class PageEditorWidget extends StatefulWidget {
  const PageEditorWidget({
    Key? key,
    Color? backgroundColor,
    bool? showHeading,
    bool? showSubHeading,
    bool? showText,
  })  : this.backgroundColor = backgroundColor ?? const Color(0xFFFBF8F0),
        this.showHeading = showHeading ?? false,
        this.showSubHeading = showSubHeading ?? false,
        this.showText = showText ?? false,
        super(key: key);

  final Color backgroundColor;
  final bool showHeading;
  final bool showSubHeading;
  final bool showText;

  @override
  _PageEditorWidgetState createState() => _PageEditorWidgetState();
}

class _PageEditorWidgetState extends State<PageEditorWidget> {
  late PageEditorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageEditorModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFFA3C4BC),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              FFIcons.kinterfaceArrowsButtonLeft,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 20.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Onodu.',
            style: FlutterFlowTheme.of(context).displaySmall.override(
                  fontFamily: 'Poppins',
                ),
          ),
          actions: [
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: Icon(
                Icons.settings,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              wrapWithModel(
                model: _model.sectionModel,
                updateCallback: () => setState(() {}),
                child: SectionWidget(),
              ),
              Expanded(
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                ),
              ),
              wrapWithModel(
                model: _model.pageEditorActionsModel,
                updateCallback: () => setState(() {}),
                child: PageEditorActionsWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
