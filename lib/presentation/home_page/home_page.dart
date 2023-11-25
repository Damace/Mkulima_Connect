import 'package:mkulima_connect/presentation/home_page/controller/category_controller.dart';
import 'package:mkulima_connect/presentation/home_page/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  CategoryController categoryController = Get.put(CategoryController());
  ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Obx(
              () => productController.isLoading.value
                  ? Center(
                      child: CircularProgressIndicator(
                        color: ColorConstant.default_color,
                      ),
                    )
                  : Stack(children: [
                      Positioned(
                        top: 0,
                        right: 0,
                        left: 0,
                        child: Container(
                          height: 250,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  // image: AssetImage("assets/images/mclogo.png"),
                                  image:
                                      const AssetImage("assets/images/top.png"),
                                  fit: BoxFit.fill)),
                          child: Container(
                            padding: EdgeInsets.only(top: 60, left: 20),
                            color: ColorConstant.default_color.withOpacity(.3),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                    text: TextSpan(
                                        text: "Mkulima",
                                        style: TextStyle(
                                            fontSize: 25,
                                            letterSpacing: 2,
                                            color: Colors.yellow),
                                        children: [
                                      TextSpan(
                                          text: " Konekt",
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.yellow))
                                    ])),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Crops Buyers & Sellers Platform",
                                  style: TextStyle(
                                      letterSpacing: 1, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 138,
                        child: Container(
                          height: 150,
                          width: MediaQuery.of(context).size.width - 40,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 15,
                                    spreadRadius: 5),
                              ]),
                          child: Column(
                            children: [
                              SizedBox(height: 28),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Container(
                                  height: getSize(52),
                                  width: double.infinity,
                                  decoration:
                                      BoxDecoration(color: Colors.transparent),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                        // imagePath: ImageConstant.imgShape70x701,
                                        imagePath: ImageConstant.imageTma,
                                        height: getSize(
                                          50,
                                        ),
                                        width: getSize(
                                          100,
                                        ),
                                        radius: BorderRadius.circular(
                                          getHorizontalSize(
                                            8,
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        // imagePath: ImageConstant.imgShape70x701,
                                        imagePath: ImageConstant.imageCrdb,
                                        height: getSize(
                                          50,
                                        ),
                                        width: getSize(
                                          100,
                                        ),
                                        radius: BorderRadius.circular(
                                          getHorizontalSize(
                                            8,
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        // imagePath: ImageConstant.imgShape70x701,
                                        imagePath: ImageConstant.imageTfda,
                                        height: getSize(
                                          50,
                                        ),
                                        width: getSize(
                                          100,
                                        ),
                                        radius: BorderRadius.circular(
                                          getHorizontalSize(
                                            8,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 12),
                              TextButton(
                                onPressed: () {
                                  onTaOurpartners();

                                  // Handle button press
                                  print('TextButton pressed');
                                },
                                child: Text(
                                  'Other Service Providers >>',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                style: TextButton.styleFrom(
                                  backgroundColor: ColorConstant.default_color
                                      .withOpacity(0.8),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20.0, vertical: 10.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          top: MediaQuery.of(context).size.height - 570,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 245,
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.centerRight,

//////////////////////////////////------------------------------------------------------

                                    child: Container(
                                        height: getVerticalSize(130),
                                        child: ListView.separated(
                                            padding: getPadding(top: 25),
                                            scrollDirection: Axis.horizontal,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  height: getVerticalSize(20));
                                            },
                                            itemCount: categoryController
                                                .categoryList.length,
                                            itemBuilder: (context, index) {
                                              return InkWell(
                                                onTap: () {
                                                  onTapCategory();
                                                },
                                                child: Card(
                                                  margin: EdgeInsets.all(8.0),
                                                  child: Container(
                                                    width:
                                                        100.0, // Adjust the width as needed
                                                    padding:
                                                        EdgeInsets.all(8.0),
                                                    child: Center(
                                                      child: Text(
                                                          categoryController
                                                              .categoryList[
                                                                  index]
                                                              .image),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }))

                                    ////////////////////////////////--------------------------------------------------------

                                    ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                    padding: getPadding(bottom: 0, right: 124),
                                    child: Text("msg_explore_nearby".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRalewayBold18
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.54)))),
                              ],
                            ),
                          )),
                      Positioned(
                          top: MediaQuery.of(context).size.height - 380,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 280,
                            child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                  children: [
                                    Padding(
                                        padding: getPadding(left: 24, top: 0),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 0, right: 24),
                                                  child:

// ----------------------------------------------------------------------------------------------------------------------------------------------------

                                                      Container(
                                                    height:
                                                        getVerticalSize(280),
                                                    child: GridView.builder(
                                                        gridDelegate:
                                                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                                                maxCrossAxisExtent:
                                                                    200,
                                                                childAspectRatio:
                                                                    3 / 2,
                                                                crossAxisSpacing:
                                                                    20,
                                                                mainAxisSpacing:
                                                                    20),
                                                        itemCount:
                                                            productController
                                                                .productList
                                                                .length,
                                                        itemBuilder:
                                                            (BuildContext ctx,
                                                                index) {
                                                          return InkWell(
                                                            onTap: () {
                                                              onTapColumnshape();
                                                            },
                                                            child: Container(
                                                              alignment:Alignment.center,

                                                              decoration: BoxDecoration(
                                                                 borderRadius: BorderRadius.circular(15),
                                                                  color: Colors.grey),
                                                                  child: NetworkImage(productController.productList[index].imageOne),
                                                                  fit: BoxFit.fill),







                                                          

                                                             
                                                            ),
                                                          );
                                                        }),
                                                  )

//----------------------------------------------------------------------------------------------------------------------------------------------------
                                                  )
                                            ])),
                                  ],
                                )),
                          ))
                    ]),
            )));
  }

  onTapItemPromotion() {
    Get.toNamed(AppRoutes.promotionScreen);
  }

  onTapCategory() {
    Get.toNamed(
      AppRoutes.categorylist,
    );
  }

  onTapColumnshape() {
    Get.toNamed(
      AppRoutes.propertyDetailsScreen,
    );
  }

  onTaOurpartners() {
    Get.toNamed(
      AppRoutes.partnersList,
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String categoryName;

  CategoryCard({required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Container(
        width: 100.0, // Adjust the width as needed
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Text(categoryName),
        ),
      ),
    );
  }
}
