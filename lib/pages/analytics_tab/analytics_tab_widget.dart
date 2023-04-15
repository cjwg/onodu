import '/components/list_card/list_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'analytics_tab_model.dart';
export 'analytics_tab_model.dart';

class AnalyticsTabWidget extends StatefulWidget {
  const AnalyticsTabWidget({Key? key}) : super(key: key);

  @override
  _AnalyticsTabWidgetState createState() => _AnalyticsTabWidgetState();
}

class _AnalyticsTabWidgetState extends State<AnalyticsTabWidget> {
  late AnalyticsTabModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnalyticsTabModel());
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
          title: Text(
            'Onodu.',
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: 'Lato',
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
