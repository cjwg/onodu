import '/components/bottom_sheet_title_widget.dart';
import '/components/edit_theme_actions_widget.dart';
import '/components/palette_editor_bottom_nav_widget.dart';
import '/components/palette_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/themes/components/theme_card/theme_card_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'theme_settings_model.dart';
export 'theme_settings_model.dart';

class ThemeSettingsWidget extends StatefulWidget {
  const ThemeSettingsWidget({Key? key}) : super(key: key);

  @override
  _ThemeSettingsWidgetState createState() => _ThemeSettingsWidgetState();
}

class _ThemeSettingsWidgetState extends State<ThemeSettingsWidget> {
  late ThemeSettingsModel _model;

  int get pageViewCurrentIndex => _model.pageViewController != null &&
          _model.pageViewController!.hasClients &&
          _model.pageViewController!.page != null
      ? _model.pageViewController!.page!.round()
      : 0;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ThemeSettingsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(0.0),
        bottomRight: Radius.circular(0.0),
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 1.0,
        height: 550.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Container(
          width: double.infinity,
          height: 500.0,
          child: PageView(
            controller: _model.pageViewController ??=
                PageController(initialPage: 0),
            scrollDirection: Axis.horizontal,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: wrapWithModel(
                      model: _model.bottomSheetTitleModel,
                      updateCallback: () => setState(() {}),
                      child: BottomSheetTitleWidget(
                        text: 'Edit theme',
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, -0.2),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        wrapWithModel(
                          model: _model.themeBrowserModel,
                          updateCallback: () => setState(() {}),
                          child: ThemeCardWidget(
                            componentIcon: Icon(
                              Icons.apps,
                            ),
                            componentName: 'Browse themes',
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await _model.pageViewController?.animateToPage(
                              1,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          },
                          child: wrapWithModel(
                            model: _model.paletteModel,
                            updateCallback: () => setState(() {}),
                            child: ThemeCardWidget(
                              componentIcon: Icon(
                                Icons.palette_rounded,
                                size: 28.0,
                              ),
                              componentName: 'Palette',
                            ),
                          ),
                        ),
                        wrapWithModel(
                          model: _model.typographyModel,
                          updateCallback: () => setState(() {}),
                          child: ThemeCardWidget(
                            componentIcon: Icon(
                              FFIcons.kinterfaceTextFormattingSmallCaps,
                              size: 28.0,
                            ),
                            componentName: 'Typography',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.imagesModel,
                          updateCallback: () => setState(() {}),
                          child: ThemeCardWidget(
                            componentIcon: Icon(
                              FFIcons.kimagePictureOrientationSquare,
                              size: 25.0,
                            ),
                            componentName: 'Images',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.buttonsModel,
                          updateCallback: () => setState(() {}),
                          child: ThemeCardWidget(
                            componentIcon: Icon(
                              FFIcons.kinterfaceTextFormattingTextSquare1,
                              size: 25.0,
                            ),
                            componentName: 'Elements',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.layoutModel,
                          updateCallback: () => setState(() {}),
                          child: ThemeCardWidget(
                            componentIcon: Icon(
                              FFIcons.kinterfaceEditAlignSelection1,
                              size: 25.0,
                            ),
                            componentName: 'Layout',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.animationModel,
                          updateCallback: () => setState(() {}),
                          child: ThemeCardWidget(
                            componentIcon: Icon(
                              Icons.animation,
                            ),
                            componentName: 'Animation',
                          ),
                        ),
                      ],
                    ),
                  ),
                  wrapWithModel(
                    model: _model.editThemeActionsModel,
                    updateCallback: () => setState(() {}),
                    child: EditThemeActionsWidget(),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
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
                            FFIcons.kinterfaceArrowsButtonLeft,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 20.0,
                          ),
                          onPressed: () async {
                            await _model.pageViewController?.previousPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease,
                            );
                          },
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 25.0, 0.0, 25.0),
                          child: Text(
                            'Palette',
                            style: FlutterFlowTheme.of(context)
                                .displaySmall
                                .override(
                                  fontFamily: 'Nunito',
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w800,
                                ),
                          ),
                        ),
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            25.0, 0.0, 25.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(25.0),
                            topRight: Radius.circular(25.0),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 1.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(25.0),
                                topRight: Radius.circular(25.0),
                              ),
                            ),
                            child: wrapWithModel(
                              model: _model.paletteItemModel1,
                              updateCallback: () => setState(() {}),
                              updateOnChange: true,
                              child: PaletteItemWidget(
                                backgroundColor: Color(0xFF022B3A),
                                colorPicker: () async {
                                  await _model.pageViewController?.nextPage(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            25.0, 0.0, 25.0, 0.0),
                        child: wrapWithModel(
                          model: _model.paletteItemModel2,
                          updateCallback: () => setState(() {}),
                          child: PaletteItemWidget(
                            backgroundColor: Color(0xFFA3C4BC),
                            colorPicker: () async {
                              await _model.pageViewController?.nextPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.ease,
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            25.0, 0.0, 25.0, 0.0),
                        child: wrapWithModel(
                          model: _model.paletteItemModel3,
                          updateCallback: () => setState(() {}),
                          child: PaletteItemWidget(
                            backgroundColor: Color(0xFFBFD7B5),
                            colorPicker: () async {},
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            25.0, 0.0, 25.0, 0.0),
                        child: wrapWithModel(
                          model: _model.paletteItemModel4,
                          updateCallback: () => setState(() {}),
                          child: PaletteItemWidget(
                            backgroundColor: Color(0xFFE7EFC5),
                            colorPicker: () async {},
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            25.0, 0.0, 25.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25.0),
                            bottomRight: Radius.circular(25.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(0.0),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 1.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(25.0),
                                bottomRight: Radius.circular(25.0),
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(0.0),
                              ),
                            ),
                            child: wrapWithModel(
                              model: _model.paletteItemModel5,
                              updateCallback: () => setState(() {}),
                              child: PaletteItemWidget(
                                backgroundColor: Color(0xFFF2DDA4),
                                colorPicker: () async {},
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: wrapWithModel(
                        model: _model.paletteEditorBottomNavModel,
                        updateCallback: () => setState(() {}),
                        child: PaletteEditorBottomNavWidget(),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 7.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              borderWidth: 1.0,
                              buttonSize: 40.0,
                              icon: Icon(
                                FFIcons.kinterfaceArrowsButtonLeft,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
                              ),
                              onPressed: () async {
                                await _model.pageViewController?.previousPage(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.ease,
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 25.0, 0.0, 10.0),
                            child: Text(
                              'Colour picker',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                          Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: MediaQuery.of(context).size.height * 1.0,
                          child: custom_widgets.ColorPickerWidget(
                            width: MediaQuery.of(context).size.width * 1.0,
                            height: MediaQuery.of(context).size.height * 1.0,
                            pickerColor: Color(0xFF022B3A),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
