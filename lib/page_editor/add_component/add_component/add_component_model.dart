import '/components/bottom_sheet_title/bottom_sheet_title_widget.dart';
import '/components/list_item/list_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddComponentModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for BottomSheetPageView widget.
  PageController? bottomSheetPageViewController;
  // Model for BottomSheetTitle component.
  late BottomSheetTitleModel bottomSheetTitleModel;
  // Model for Heading.
  late ListItemModel headingModel;
  // Model for SubHeading.
  late ListItemModel subHeadingModel;
  // Model for Text.
  late ListItemModel textModel;
  // Model for ListItem component.
  late ListItemModel listItemModel1;
  // Model for ListItem component.
  late ListItemModel listItemModel2;
  // Model for Carousel.
  late ListItemModel carouselModel;
  // Model for List.
  late ListItemModel listModel;
  // Model for Tabs.
  late ListItemModel tabsModel;
  // Model for Sectio.
  late ListItemModel sectioModel;
  // Model for ContactCard.
  late ListItemModel contactCardModel;
  // Model for SignUpForm.
  late ListItemModel signUpFormModel;
  // Model for BookingForm.
  late ListItemModel bookingFormModel;
  // Model for Payment.
  late ListItemModel paymentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bottomSheetTitleModel = createModel(context, () => BottomSheetTitleModel());
    headingModel = createModel(context, () => ListItemModel());
    subHeadingModel = createModel(context, () => ListItemModel());
    textModel = createModel(context, () => ListItemModel());
    listItemModel1 = createModel(context, () => ListItemModel());
    listItemModel2 = createModel(context, () => ListItemModel());
    carouselModel = createModel(context, () => ListItemModel());
    listModel = createModel(context, () => ListItemModel());
    tabsModel = createModel(context, () => ListItemModel());
    sectioModel = createModel(context, () => ListItemModel());
    contactCardModel = createModel(context, () => ListItemModel());
    signUpFormModel = createModel(context, () => ListItemModel());
    bookingFormModel = createModel(context, () => ListItemModel());
    paymentModel = createModel(context, () => ListItemModel());
  }

  void dispose() {
    bottomSheetTitleModel.dispose();
    headingModel.dispose();
    subHeadingModel.dispose();
    textModel.dispose();
    listItemModel1.dispose();
    listItemModel2.dispose();
    carouselModel.dispose();
    listModel.dispose();
    tabsModel.dispose();
    sectioModel.dispose();
    contactCardModel.dispose();
    signUpFormModel.dispose();
    bookingFormModel.dispose();
    paymentModel.dispose();
  }

  /// Additional helper methods are added here.

}
