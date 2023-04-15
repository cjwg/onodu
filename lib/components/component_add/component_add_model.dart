import '/components/bottom_sheet_title_widget.dart';
import '/components/component_card/component_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComponentAddModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for BottomSheetPageView widget.
  PageController? bottomSheetPageViewController;
  // Model for BottomSheetTitle component.
  late BottomSheetTitleModel bottomSheetTitleModel;
  // Model for Heading.
  late ComponentCardModel headingModel;
  // Model for Subheading.
  late ComponentCardModel subheadingModel;
  // Model for Text.
  late ComponentCardModel textModel;
  // Model for Button.
  late ComponentCardModel buttonModel;
  // Model for Image.
  late ComponentCardModel imageModel;
  // Model for Carousel.
  late ComponentCardModel carouselModel;
  // Model for List.
  late ComponentCardModel listModel;
  // Model for Tabs.
  late ComponentCardModel tabsModel;
  // Model for Section.
  late ComponentCardModel sectionModel1;
  // Model for Section.
  late ComponentCardModel sectionModel2;
  // Model for SignUpForm.
  late ComponentCardModel signUpFormModel;
  // Model for BookingForm.
  late ComponentCardModel bookingFormModel;
  // Model for Payment.
  late ComponentCardModel paymentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bottomSheetTitleModel = createModel(context, () => BottomSheetTitleModel());
    headingModel = createModel(context, () => ComponentCardModel());
    subheadingModel = createModel(context, () => ComponentCardModel());
    textModel = createModel(context, () => ComponentCardModel());
    buttonModel = createModel(context, () => ComponentCardModel());
    imageModel = createModel(context, () => ComponentCardModel());
    carouselModel = createModel(context, () => ComponentCardModel());
    listModel = createModel(context, () => ComponentCardModel());
    tabsModel = createModel(context, () => ComponentCardModel());
    sectionModel1 = createModel(context, () => ComponentCardModel());
    sectionModel2 = createModel(context, () => ComponentCardModel());
    signUpFormModel = createModel(context, () => ComponentCardModel());
    bookingFormModel = createModel(context, () => ComponentCardModel());
    paymentModel = createModel(context, () => ComponentCardModel());
  }

  void dispose() {
    bottomSheetTitleModel.dispose();
    headingModel.dispose();
    subheadingModel.dispose();
    textModel.dispose();
    buttonModel.dispose();
    imageModel.dispose();
    carouselModel.dispose();
    listModel.dispose();
    tabsModel.dispose();
    sectionModel1.dispose();
    sectionModel2.dispose();
    signUpFormModel.dispose();
    bookingFormModel.dispose();
    paymentModel.dispose();
  }

  /// Additional helper methods are added here.

}
