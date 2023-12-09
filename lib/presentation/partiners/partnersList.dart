import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/core/utils/image_constant.dart';
import 'package:mkulima_connect/core/utils/size_utils.dart';
import 'package:mkulima_connect/theme/app_style.dart';
import 'package:mkulima_connect/widgets/custom_image_view.dart';
import 'controller/product_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/widgets/custom_icon_button.dart';

class PartinersScreen extends GetWidget<ProductListController> {
  List stocksList = [
    CompanyStocks(name: "Facebook", price: 339.1),
    CompanyStocks(name: "A10 NETWORKS INC.", price: 10.34),
    CompanyStocks(name: "Intel Corp", price: 56.96),
    CompanyStocks(name: "HP Inc", price: 32.43),
    CompanyStocks(name: "Advanced Micro Devices Inc.", price: 77.44),
    CompanyStocks(name: "Apple Inc", price: 133.98),
    CompanyStocks(name: "Amazon.com, Inc.", price: 3505.44),
    CompanyStocks(name: "Microsoft Corporation", price: 265.51),
    CompanyStocks(name: "Facebook", price: 339.1),
    CompanyStocks(name: "A10 NETWORKS INC.", price: 10.34),
    CompanyStocks(name: "Intel Corp", price: 56.96),
    CompanyStocks(name: "HP Inc", price: 32.43),
    CompanyStocks(name: "Advanced Micro Devices Inc.", price: 77.44),
    CompanyStocks(name: "Apple Inc", price: 133.98),
    CompanyStocks(name: "Amazon.com, Inc.", price: 3505.44),
    CompanyStocks(name: "Microsoft Corporation", price: 265.51)
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Colors.white,
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            elevation: 0,
            leading: CustomIconButton(
                height: 50,
                width: 50,
                variant: IconButtonVariant.FillWhiteA700,
                shape: IconButtonShape.CircleBorder25,
                padding: IconButtonPadding.PaddingAll16,
                onTap: () {
                  onTapBtnArrowleft();
                },
                child: CustomImageView(svgPath: ImageConstant.imgArrowleft)),
            title: Text("Services Provid",
                style: AppStyle.txtdefaultcolor
                    .copyWith(letterSpacing: getHorizontalSize(0.1),
                    fontSize: 16
          
                    )),
            centerTitle: true,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: stocksList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 0, right: 0),
                child: Card(
                  elevation: 0.5,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: ListTile(
                      title: Text(
                        stocksList[index].name,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      leading: CircleAvatar(
                        child: Text(
                          stocksList[index].name[0],
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      trailing: Text("\$ ${stocksList[index].price}"),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  onTapBtnArrowleft() {
    Get.back();
  }

  onTapSkip() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.preferableSelectedScreen,
    );
  }
}

class CompanyStocks {
  String name;
  double price;

  CompanyStocks({required this.name, required this.price});
}
