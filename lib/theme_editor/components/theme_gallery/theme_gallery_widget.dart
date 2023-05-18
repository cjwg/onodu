import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'theme_gallery_model.dart';
export 'theme_gallery_model.dart';

class ThemeGalleryWidget extends StatefulWidget {
  const ThemeGalleryWidget({Key? key}) : super(key: key);

  @override
  _ThemeGalleryWidgetState createState() => _ThemeGalleryWidgetState();
}

class _ThemeGalleryWidgetState extends State<ThemeGalleryWidget> {
  late ThemeGalleryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ThemeGalleryModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Column(
        children: [
          Align(
            alignment: Alignment(0.0, 0),
            child: FlutterFlowButtonTabBar(
              useToggleButtonStyle: true,
              labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w600,
                  ),
              unselectedLabelStyle:
                  FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w600,
                      ),
              labelColor: FlutterFlowTheme.of(context).primaryText,
              unselectedLabelColor: FlutterFlowTheme.of(context).primaryText,
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              unselectedBackgroundColor: FlutterFlowTheme.of(context).accent3,
              borderColor: FlutterFlowTheme.of(context).accent3,
              unselectedBorderColor: FlutterFlowTheme.of(context).accent3,
              borderWidth: 2.0,
              borderRadius: 15.0,
              elevation: 1.0,
              padding: EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
              tabs: [
                Tab(
                  text: 'My themes',
                ),
                Tab(
                  text: 'Favourites',
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(25.0, 25.0, 25.0, 25.0),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Stack(
                          children: [
                            Image.network(
                              'https://picsum.photos/seed/983/600',
                              width: MediaQuery.of(context).size.width * 1.0,
                              height: 225.0,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 1.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Tab View 3',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Nunito',
                        fontSize: 32.0,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
