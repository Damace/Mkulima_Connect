import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';
import 'package:mkulima_connect/presentation/home_page/controller/category_controller.dart';
import 'package:mkulima_connect/presentation/home_page/controller/items_controller.dart';
import 'package:mkulima_connect/presentation/home_page/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  CategoryController categoryController = Get.put(CategoryController());
  ProductController productController = Get.put(ProductController());
  ItemController itemController = Get.put(ItemController());

  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return Scaffold(
      backgroundColor: Color(0xfFE9EBEA),
      body: ListView(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 18, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 280,
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search..",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Badge(
                    label: Text('1'),
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      size: 35,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Badge(
                    label: Text('9+'),
                    child: Icon(
                      Icons.shopping_cart,
                      size: 35,
                    ),
                  ),
                ],
              ),
            ),
            CarouselSlider(
              items: [
                // buildImage('https://example.com/image1.jpg'),
                //buildImage('https://example.com/image2.jpg'),
                //buildImage('https://example.com/image3.jpg'),

                buildImage('assets/images/top4.png'),
                buildImage('assets/images/top4.png'),
                buildImage('assets/images/top4.png'),

                // Your carousel items go here (e.g., Image.network, Container, etc.)
                // Image.network('https://example.com/image1.jpg'),
                //Image.network('https://example.com/image2.jpg'),
                //Image.network('https://example.com/image3.jpg'),
              ],
              options: CarouselOptions(
                aspectRatio: 16 / 9,
                viewportFraction: 1.0,
                autoPlay: true, // Set to true for auto-playing the carousel
                autoPlayInterval: Duration(seconds: 5),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                onPageChanged: (index, reason) {
                  // Callback when the page changes
                },
                scrollDirection: Axis
                    .horizontal, // Set to Axis.vertical for vertical carousel
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 410,
                    color: Colors.white,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 5.0,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    color: Color(0xffF6F6F6),
                                    child: Icon(
                                      Icons.ac_unit,
                                      size: 32,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "Korosho",
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    color: Color(0xffF6F6F6),
                                    child: Icon(
                                      Icons.add_business_sharp,
                                      size: 32,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "Bens",
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    color: Color(0xffF6F6F6),
                                    child: Icon(
                                      Icons.category,
                                      size: 32,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "Maize",
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    color: Color(0xffF6F6F6),
                                    child: Icon(
                                      Icons.yard_outlined,
                                      size: 32,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    "Rice",
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ]),
                  )
                ],
              ),
            ),
            Container(
              height: 30,
              color: Color.fromARGB(255, 245, 241, 241),
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best selling",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text("More",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  height: 480,
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 2 / 2,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20),
                      //itemCount: itemController.,
                       itemCount: productController.productList.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return InkWell(
                          child: Container(
                            color: Colors.white,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 180,
                                    width: 180,
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 240, 242, 242),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              "assets/images/shy.jpeg"),
                                        )),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Palachichi",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Essential Mens \nT-shirsshort\n-Sleeve",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '4.9 | 2346',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '\$3000',
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ],
        )
      ]),
    );
  }

  Widget buildImage(String imageUrl) {
    return Container(
      margin: EdgeInsets.all(0), // Set margin to 0
      padding: EdgeInsets.all(0), // Set padding to 0
      child: ClipRRect(
        borderRadius:
            BorderRadius.all(Radius.circular(0)), // Set border radius to 0

        /*
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),x`
        */

        child: Image.asset(
          imageUrl,
          fit: BoxFit.fill,
          width: double.infinity,
        ),
      ),
    );
  }

  onTapItemPromotion() {
    Get.toNamed(AppRoutes.promotionScreen);
  }

  onTapCategory() {
    Get.toNamed(
      AppRoutes.categorylist,
    );
  }

/*
  onTapColumnshape() {
    Get.toNamed(
      AppRoutes.propertyDetailsScreen,
    );
  }

  */

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
