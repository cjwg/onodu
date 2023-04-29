import '/components/list_card/list_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'theme_wizard_model.dart';
export 'theme_wizard_model.dart';

class ThemeWizardWidget extends StatefulWidget {
  const ThemeWizardWidget({Key? key}) : super(key: key);

  @override
  _ThemeWizardWidgetState createState() => _ThemeWizardWidgetState();
}

class _ThemeWizardWidgetState extends State<ThemeWizardWidget> {
  late ThemeWizardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ThemeWizardModel());
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
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.chevron_left,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Choose a theme',
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: 'Lato',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 1.0,
        ),
        body: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('PageEditor');
              },
              child: wrapWithModel(
                model: _model.listCardModel1,
                updateCallback: () => setState(() {}),
                child: ListCardWidget(
                  title: 'Theme 1',
                  subtitle: 'Description',
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('PageEditor');
              },
              child: wrapWithModel(
                model: _model.listCardModel2,
                updateCallback: () => setState(() {}),
                child: ListCardWidget(
                  title: 'Theme 2',
                  subtitle: 'Description',
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('PageEditor');
              },
              child: wrapWithModel(
                model: _model.listCardModel3,
                updateCallback: () => setState(() {}),
                child: ListCardWidget(
                  title: 'Theme 3',
                  subtitle: 'Description',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
