import '/components/bottom_sheet_title/bottom_sheet_title_widget.dart';
import '/components/list_item/list_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
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
      height: 620.0,
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
              mainAxisSize: MainAxisSize.min,
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
                        EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                              child: ListItemWidget(
                                leftIcon: Icon(
                                  FFIcons.kinterfaceTextFormattingTextStyle,
                                ),
                                title: 'Heading',
                                rightIcon: Icon(
                                  FFIcons.kinterfaceAdd2,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 17.0,
                                ),
                                bottomRadius: false,
                                topRadius: false,
                              ),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.subHeadingModel,
                            updateCallback: () => setState(() {}),
                            child: ListItemWidget(
                              leftIcon: Icon(
                                FFIcons.kinterfaceTextFormattingSmallCaps,
                              ),
                              title: 'Sub heading',
                              rightIcon: Icon(
                                FFIcons.kinterfaceAdd21,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 17.0,
                              ),
                              bottomRadius: false,
                              topRadius: false,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.textModel,
                            updateCallback: () => setState(() {}),
                            child: ListItemWidget(
                              leftIcon: Icon(
                                FFIcons.kinterfaceTextFormattingLeftAlign,
                              ),
                              title: 'Text',
                              rightIcon: Icon(
                                FFIcons.kinterfaceAdd21,
                              ),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.listItemModel1,
                            updateCallback: () => setState(() {}),
                            child: ListItemWidget(
                              leftIcon: Icon(
                                FFIcons.kinterfaceTextFormattingTextSquare,
                              ),
                              title: 'Button',
                              rightIcon: Icon(
                                FFIcons.kinterfaceAdd21,
                              ),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.listItemModel2,
                            updateCallback: () => setState(() {}),
                            child: ListItemWidget(
                              leftIcon: Icon(
                                FFIcons.kimagePictureOrientationSquare,
                              ),
                              title: 'Image',
                              rightIcon: Icon(
                                FFIcons.kinterfaceAdd21,
                              ),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.carouselModel,
                            updateCallback: () => setState(() {}),
                            child: ListItemWidget(
                              leftIcon: Icon(
                                Icons.view_carousel,
                              ),
                              title: 'Carousel',
                              rightIcon: Icon(
                                FFIcons.kinterfaceAdd2,
                              ),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.listModel,
                            updateCallback: () => setState(() {}),
                            child: ListItemWidget(
                              leftIcon: Icon(
                                Icons.format_list_bulleted_rounded,
                              ),
                              title: 'List',
                              rightIcon: Icon(
                                FFIcons.kinterfaceAdd21,
                              ),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.tabsModel,
                            updateCallback: () => setState(() {}),
                            child: ListItemWidget(
                              leftIcon: Icon(
                                Icons.tab,
                              ),
                              title: 'Tabs',
                              rightIcon: Icon(
                                FFIcons.kinterfaceAdd21,
                              ),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.sectioModel,
                            updateCallback: () => setState(() {}),
                            child: ListItemWidget(
                              leftIcon: Icon(
                                FFIcons.kinterfaceEditCarouselVertical1,
                              ),
                              title: 'Section',
                              rightIcon: Icon(
                                FFIcons.kinterfaceAdd21,
                              ),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.contactCardModel,
                            updateCallback: () => setState(() {}),
                            child: ListItemWidget(
                              leftIcon: Icon(
                                FFIcons.kentertainmentNewsPaper,
                              ),
                              title: 'Contact card',
                              rightIcon: Icon(
                                FFIcons.kinterfaceAdd2,
                              ),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.signUpFormModel,
                            updateCallback: () => setState(() {}),
                            child: ListItemWidget(
                              leftIcon: Icon(
                                Icons.person,
                              ),
                              title: 'Sign up form',
                              rightIcon: Icon(
                                FFIcons.kinterfaceAdd2,
                              ),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.bookingFormModel,
                            updateCallback: () => setState(() {}),
                            child: ListItemWidget(
                              leftIcon: Icon(
                                Icons.calendar_today_rounded,
                              ),
                              title: 'Booking form',
                              rightIcon: Icon(
                                FFIcons.kinterfaceAdd21,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 25.0),
                            child: wrapWithModel(
                              model: _model.paymentModel,
                              updateCallback: () => setState(() {}),
                              child: ListItemWidget(
                                leftIcon: Icon(
                                  Icons.payment_rounded,
                                ),
                                title: 'Payment',
                                rightIcon: Icon(
                                  FFIcons.kinterfaceAdd21,
                                ),
                                bottomRadius: false,
                                topRadius: false,
                              ),
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
