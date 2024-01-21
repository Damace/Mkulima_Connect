import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/home_page/controller/product_controller.dart';
import 'package:mkulima_connect/presentation/partiners/controller/product_list_controller.dart';
import 'package:mkulima_connect/widgets/custom_icon_button.dart';

class CategoryListScreen extends GetWidget<ProductListController> {
  ProductController productController = Get.put(ProductController());

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
            title: Text("Services Provider",
                style: AppStyle.txtdefaultcolor.copyWith(
                    letterSpacing: getHorizontalSize(0.1), fontSize: 16)),
            centerTitle: true,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(6.0),
          child: ListView.builder(
            itemCount: productController.productList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 0, right: 0),
                child: Card(
                  elevation: 0.5,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: ListTile(

                         leading: CachedNetworkImage(
                        alignment: Alignment.bottomLeft,
                        imageUrl: productController.productList[index].imageUrl,
                        fit: BoxFit.fill,
                        width: 80,
                       // height: 100,
                      ),
                  
                       title:Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          Row(
                            children: [
                              Text(
                        productController.productList[index].name,
                        style: TextStyle(
                              fontSize: 16,
                        ),
                      ),
                            ],
                          ), ]),),
                          subtitle:Text (productController.productList[index].details,
                          overflow: TextOverflow.ellipsis,), 
                         trailing: Text(
                          "\$ ${productController.productList[index].price}"),





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
