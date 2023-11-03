import '../result_filter_screen/widgets/filter_item_widget.dart';import '../result_filter_screen/widgets/listshape3_item_widget.dart';import 'controller/result_filter_controller.dart';import 'models/filter_item_model.dart';import 'models/listshape3_item_model.dart';import 'package:flutter/material.dart';import 'package:mkulima_connect/core/app_export.dart';import 'package:mkulima_connect/widgets/app_bar/appbar_iconbutton_2.dart';import 'package:mkulima_connect/widgets/app_bar/appbar_stack.dart';import 'package:mkulima_connect/widgets/app_bar/appbar_title.dart';import 'package:mkulima_connect/widgets/app_bar/custom_app_bar.dart';import 'package:mkulima_connect/widgets/custom_search_view.dart';class ResultFilterScreen extends GetWidget<ResultFilterController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(77), leadingWidth: 74, leading: AppbarIconbutton2(svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 3, bottom: 3), onTap: () {onTapArrowleft18();}), centerTitle: true, title: AppbarTitle(text: "lbl_search_results".tr), actions: [AppbarStack(margin: getMargin(left: 24, top: 3, right: 24, bottom: 3))]), body: Container(width: double.maxFinite, padding: getPadding(all: 10), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomSearchView(focusNode: FocusNode(), controller: controller.formSearchController, hintText: "lbl_modern_house".tr, margin: getMargin(left: 14, top: 7, right: 14), suffix: Container(margin: getMargin(left: 30, top: 25, right: 16, bottom: 25), child: CustomImageView(svgPath: ImageConstant.imgSearch)), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(70))), Padding(padding: getPadding(left: 14, top: 20, right: 14), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(top: 8, bottom: 9), child: Text("lbl_found".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayMedium18.copyWith(letterSpacing: getHorizontalSize(0.54)))), Padding(padding: getPadding(left: 5, top: 8, bottom: 9), child: Text("lbl_128".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratBold18.copyWith(letterSpacing: getHorizontalSize(0.54)))), Padding(padding: getPadding(left: 5, top: 8, bottom: 9), child: Text("lbl_estates".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayMedium18.copyWith(letterSpacing: getHorizontalSize(0.54)))), Spacer(), Container(width: getHorizontalSize(93), padding: getPadding(all: 8), decoration: AppDecoration.fillGray100.copyWith(borderRadius: BorderRadiusStyle.circleBorder20), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), color: ColorConstant.whiteA700, shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.circleBorder12), child: Container(height: getVerticalSize(24), width: getHorizontalSize(36), padding: getPadding(left: 12, top: 6, right: 12, bottom: 6), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: Stack(children: [CustomImageView(svgPath: ImageConstant.imgMenu, height: getSize(12), width: getSize(12), alignment: Alignment.center)]))), Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: getMargin(left: 5), color: ColorConstant.whiteA700, shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.circleBorder12), child: Container(height: getVerticalSize(24), width: getHorizontalSize(36), padding: getPadding(left: 12, top: 6, right: 12, bottom: 6), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: Stack(children: [CustomImageView(svgPath: ImageConstant.imgMenu1, height: getSize(12), width: getSize(12), alignment: Alignment.center)])))]))])), Padding(padding: getPadding(top: 20), child: Obx(() => Wrap(runSpacing: getVerticalSize(5), spacing: getHorizontalSize(5), children: List<Widget>.generate(controller.resultFilterModelObj.value.filterItemList.value.length, (index) {FilterItemModel model = controller.resultFilterModelObj.value.filterItemList.value[index]; return FilterItemWidget(model);})))), Padding(padding: getPadding(left: 14, top: 20, right: 14), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(10));}, itemCount: controller.resultFilterModelObj.value.listshape3ItemList.value.length, itemBuilder: (context, index) {Listshape3ItemModel model = controller.resultFilterModelObj.value.listshape3ItemList.value[index]; return Listshape3ItemWidget(model);})))])))); } 
onTapArrowleft18() { Get.back(); } 
 }
