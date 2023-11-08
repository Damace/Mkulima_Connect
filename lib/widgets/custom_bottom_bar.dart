import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({this.onChanged});

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
  
     BottomMenuModel(
      icon: ImageConstant.imgHome,
      type: BottomBarEnum.Iconhouseactive,
    ),

     BottomMenuModel(
      icon: ImageConstant.imgSearch,
      type: BottomBarEnum.Search,
    ),

    BottomMenuModel(
      icon: ImageConstant.imgMenu,
      type: BottomBarEnum.User25x25,
    ),
   
    BottomMenuModel(
      icon: ImageConstant.imgNotification,
      type: BottomBarEnum.Favoritebluegray80001,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUser25x25,
      type: BottomBarEnum.User25x25,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.whiteA700E5,
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: CustomImageView(
                svgPath: bottomMenuList[index].icon,
                height: getSize(
                  25,
                ),
                width: getSize(
                  25,
                ),
                color: ColorConstant.default_color,
                radius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                    getHorizontalSize(
                      50,
                    ),
                  ),
                  bottomRight: Radius.circular(
                    getHorizontalSize(
                      50,
                    ),
                  ),
                ),
              ),
              activeIcon: CustomImageView(
                svgPath: bottomMenuList[index].icon,
                height: getVerticalSize(
                  34,
                ),
                width: getHorizontalSize(
                  25,
                ),
                color: ColorConstant.default_color,
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Iconhouseactive,
  Search,
  Favoritebluegray80001,
  User25x25,
}

class BottomMenuModel {
  BottomMenuModel({required this.icon, required this.type});

  String icon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
