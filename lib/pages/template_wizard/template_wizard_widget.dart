import '/components/list_card/list_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'template_wizard_model.dart';
export 'template_wizard_model.dart';

class TemplateWizardWidget extends StatefulWidget {
  const TemplateWizardWidget({Key? key}) : super(key: key);

  @override
  _TemplateWizardWidgetState createState() => _TemplateWizardWidgetState();
}

class _TemplateWizardWidgetState extends State<TemplateWizardWidget> {
  late TemplateWizardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TemplateWizardModel());
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
              FFIcons.kinterfaceArrowsButtonLeft,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 20.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Choose a template',
            style: FlutterFlowTheme.of(context).headlineSmall.override(
                  fontFamily: 'Nunito',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
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
                context.pushNamed('ThemeWizard');
              },
              child: wrapWithModel(
                model: _model.listCardModel1,
                updateCallback: () => setState(() {}),
                child: ListCardWidget(
                  title: 'Template 1',
                  subtitle: 'Great for...',
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('ThemeWizard');
              },
              child: wrapWithModel(
                model: _model.listCardModel2,
                updateCallback: () => setState(() {}),
                child: ListCardWidget(
                  title: 'Template 2',
                  subtitle: 'Great for...',
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('ThemeWizard');
              },
              child: wrapWithModel(
                model: _model.listCardModel3,
                updateCallback: () => setState(() {}),
                child: ListCardWidget(
                  title: 'Template 3',
                  subtitle: 'Great for...',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
