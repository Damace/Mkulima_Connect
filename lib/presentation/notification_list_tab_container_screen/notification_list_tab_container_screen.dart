import 'controller/notification_list_tab_container_controller.dart';import 'package:flutter/material.dart';import 'package:mkulima_connect/core/app_export.dart';import 'package:mkulima_connect/presentation/notification_list_page/notification_list_page.dart';import 'package:mkulima_connect/widgets/app_bar/appbar_iconbutton_2.dart';import 'package:mkulima_connect/widgets/app_bar/custom_app_bar.dart';class NotificationListTabContainerScreen extends GetWidget<NotificationListTabContainerController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(74), leadingWidth: 74, leading: AppbarIconbutton2(svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24), onTap: () {onTapArrowleft12();}), actions: [AppbarIconbutton2(svgPath: ImageConstant.imgAe45615de12342ab99f19311ea988aa7, margin: getMargin(left: 24, right: 24))]), body: SizedBox(width: size.width, child: SingleChildScrollView(child: Padding(padding: getPadding(top: 20), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getVerticalSize(50), width: getHorizontalSize(327), decoration: BoxDecoration(color: ColorConstant.gray100, borderRadius: BorderRadius.circular(getHorizontalSize(25))), child: TabBar(controller: controller.buttonController, labelColor: ColorConstant.blueGray80001, labelStyle: TextStyle(fontSize: getFontSize(12), fontFamily: 'Raleway', fontWeight: FontWeight.w600), unselectedLabelColor: ColorConstant.indigo200, unselectedLabelStyle: TextStyle(fontSize: getFontSize(12), fontFamily: 'Raleway', fontWeight: FontWeight.w600), indicatorPadding: getPadding(all: 9.0), indicator: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.circular(getHorizontalSize(16))), tabs: [Tab(child: Text("lbl_notification".tr, overflow: TextOverflow.ellipsis)), Tab(child: Text("lbl_messages".tr, overflow: TextOverflow.ellipsis))])), Container(height: getVerticalSize(690), child: TabBarView(controller: controller.buttonController, children: [NotificationListPage(), NotificationListPage()]))])))))); } 
onTapArrowleft12() { Get.back(); } 
 }
