import '/components/bottom_sheet_title/bottom_sheet_title_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/page_editor/add_component/component_card/component_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_component_model.dart';
export 'add_component_model.dart';

class AddComponentWidget extends StatefulWidget {
  const AddComponentWidget({Key? key}) : super(key: key);

  @override
  _AddComponentWidgetState createState() => _AddComponentWidgetState();
}

class _AddComponentWidgetState extends State<AddComponentWidget> {
  late AddComponentModel _model;

  int get bottomSheetPageViewCurrentIndex =>
      _model.bottomSheetPageViewController != null &&
              _model.bottomSheetPageViewController!.hasClients &&
              _model.bottomSheetPageViewController!.page != null
          ? _model.bottomSheetPageViewController!.page!.round()
          : 0;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddComponentModel());
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
      height: 400.0,
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
        height: 400.0,
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _model.bottomSheetPageViewController ??=
              PageController(initialPage: 0),
          scrollDirection: Axis.horizontal,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.bottomSheetTitleModel,
                  updateCallback: () => setState(() {}),
                  child: BottomSheetTitleWidget(
                    text: 'Add component',
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              Navigator.pop(context);
                            },
                            child: wrapWithModel(
                              model: _model.headingModel,
                              updateCallback: () => setState(() {}),
                              child: ComponentCardWidget(
                                componentIcon: Icon(
                                  FFIcons.kinterfaceTextFormattingTextStyle,
                                  size: 18.0,
                                ),
                                componentName: 'Heading',
                              ),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.subheadingModel,
                            updateCallback: () => setState(() {}),
                            child: ComponentCardWidget(
                              componentIcon: Icon(
                                FFIcons.kinterfaceTextFormattingSmallCaps,
                              ),
                              componentName: 'Subheading',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.textModel,
                            updateCallback: () => setState(() {}),
                            child: ComponentCardWidget(
                              componentIcon: Icon(
                                FFIcons.kinterfaceTextFormattingLeftAlign,
                                size: 20.0,
                              ),
                              componentName: 'Text',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.buttonModel,
                            updateCallback: () => setState(() {}),
                            child: ComponentCardWidget(
                              componentIcon: Icon(
                                FFIcons.kinterfaceTextFormattingTextSquare1,
                                size: 19.0,
                              ),
                              componentName: 'Button',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.imageModel,
                            updateCallback: () => setState(() {}),
                            child: ComponentCardWidget(
                              componentIcon: Icon(
                                FFIcons.kimagePictureOrientationSquare,
                                size: 22.0,
                              ),
                              componentName: 'Image',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.carouselModel,
                            updateCallback: () => setState(() {}),
                            child: ComponentCardWidget(
                              componentIcon: Icon(
                                Icons.view_carousel_rounded,
                              ),
                              componentName: 'Carousel',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.listModel,
                            updateCallback: () => setState(() {}),
                            child: ComponentCardWidget(
                              componentIcon: Icon(
                                FFIcons.kinterfaceTextFormattingListBullets,
                                size: 15.0,
                              ),
                              componentName: 'List',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.tabsModel,
                            updateCallback: () => setState(() {}),
                            child: ComponentCardWidget(
                              componentIcon: Icon(
                                Icons.tab,
                                size: 20.0,
                              ),
                              componentName: 'Tabs',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.sectionModel1,
                            updateCallback: () => setState(() {}),
                            child: ComponentCardWidget(
                              componentIcon: Icon(
                                FFIcons.kinterfaceEditCarouselVertical,
                                size: 20.0,
                              ),
                              componentName: 'Section',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.sectionModel2,
                            updateCallback: () => setState(() {}),
                            child: ComponentCardWidget(
                              componentIcon: Icon(
                                FFIcons.kphoneContactPhonebook,
                                size: 19.0,
                              ),
                              componentName: 'Contact card',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.signUpFormModel,
                            updateCallback: () => setState(() {}),
                            child: ComponentCardWidget(
                              componentIcon: Icon(
                                Icons.account_circle,
                              ),
                              componentName: 'Sign up form',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.bookingFormModel,
                            updateCallback: () => setState(() {}),
                            child: ComponentCardWidget(
                              componentIcon: FaIcon(
                                FontAwesomeIcons.calendar,
                                size: 20.0,
                              ),
                              componentName: 'Booking form',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.paymentModel,
                            updateCallback: () => setState(() {}),
                            child: ComponentCardWidget(
                              componentIcon: Icon(
                                Icons.payment,
                              ),
                              componentName: 'Take a payment',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: Container(
                    width: 50.0,
                    height: 4.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Edit component',
                        style: FlutterFlowTheme.of(context).titleMedium,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Category Name',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Category Name',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Category Name',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Category Name',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Category Name',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
