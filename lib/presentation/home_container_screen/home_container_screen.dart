import 'package:mkulima_connect/presentation/category_list/categoryList.dart';
import 'package:mkulima_connect/presentation/notification_list_page/notification_list_page.dart';
import 'package:mkulima_connect/presentation/productListView/productList_screen.dart';
import 'package:mkulima_connect/presentation/property_details_screen/property_details_screen.dart';
import 'package:mkulima_connect/presentation/transaction_tab_container_page/transaction_tab_container_page.dart';
import 'controller/home_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/home_page/home_page.dart';
import 'package:mkulima_connect/widgets/custom_bottom_bar.dart';

class HomeContainerScreen extends GetWidget<HomeContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.fadeIn)),

                bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })
            
            )
            );
  }

  ///Handling route cl on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {

      case BottomBarEnum.Iconhouseactive:
        return AppRoutes.homePage;

      case BottomBarEnum.User25x25:
        return AppRoutes.categorylist;

      case BottomBarEnum.Notification:
        return AppRoutes.notificationListPage;

      case BottomBarEnum.Alex:
        // return AppRoutes.transactionTabContainerPage;
        return AppRoutes.propertyDetailsScreen;


      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {


    switch (currentRoute) {

      case AppRoutes.homePage:
        return HomePage();


     case AppRoutes.categorylist:
       // return CategoryListScreen();

  
      case AppRoutes.notificationListPage:
       // return NotificationListPage();


    // case AppRoutes.transactionTabContainerPage:
      //  return TransactionTabContainerPage();

          case AppRoutes.propertyDetailsScreen:
        // return PropertyDetailsScreen();

      default:
        return DefaultWidget();
    }
  }
}
