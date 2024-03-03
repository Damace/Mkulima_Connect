import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:mkulima_connect/presentation/home_page/controller/category_controller.dart';
import 'package:mkulima_connect/presentation/home_page/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/home_page/home_page.dart';
import 'package:mkulima_connect/presentation/home_page/models/cart_item.dart';
import 'package:mkulima_connect/presentation/home_page/models/products_model.dart';
import 'package:mkulima_connect/presentation/provider/cart_provider.dart';
import 'package:mkulima_connect/presentation/services/services.dart';

import 'package:provider/provider.dart';
import 'package:scoped_model/scoped_model.dart';

class CartPage extends StatefulWidget {
  _CartPage createState() => _CartPage();
}

class _CartPage extends State<CartPage> {
  ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.default_color,
        title: Text("My Cart"),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              productController.clearCart();
              Get.offAll(ServicesScreen());
            },
            child: Container(
              padding: EdgeInsets.all(8),
              alignment: Alignment.center,
              child: Icon(
                Icons.delete_forever,
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
      body: Obx(() => Stack(
            children: [
              ListView.builder(
                  itemCount: productController.cartList.length,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 50,
                                  width: 50,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      image: DecorationImage(
                                          image: NetworkImage(productController
                                              .cartList[index].imageUrl!))),
                                ),
                                Expanded(
                                  child: Container(
                                    child: Text(
                                      productController.cartList[index].name!,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    productController.removeFromCart(
                                        productController.cartList[index]);
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.delete_outline_sharp,
                                      color: Colors.red,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              child: Text(
                                "Tsh." +
                                    productController.productList[index].price!
                                        .toString(),
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Divider(),
                          ],
                        ));
                  }),
              Positioned(
                bottom: 0,
                child: Card(
                  elevation: 0,
                  color: Color.fromARGB(255, 249, 246, 246),
                  child: Container(
                      padding: EdgeInsets.all(16),
                      child: Obx(() => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  "Products available ${productController.count} ",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Total price:  Tsh.${productController.totalPrice}",
                                  style: TextStyle(color: Colors.black),
                                ),
                              )
                            ],
                          ))),
                ),
              )
            ],
          )),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: ColorConstant.default_color,
          onPressed: () {
            WidgetCheckOut(context);
          },
          label: Text("Checkout")),
    );
  }
}

WidgetCheckOut(context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusDirectional.only(
        topEnd: Radius.circular(25),
        topStart: Radius.circular(25),
      ),
    ),
    builder: (context) => SingleChildScrollView(
      padding: EdgeInsetsDirectional.only(
        bottom: 0,
        top: 0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: ColorConstant.default_color,
                    boxShadow: [
                      BoxShadow(
                        color: ColorConstant.default_color,
                        blurRadius: 3,
                      ),
                    ]),
                child: Text("                            "),
              ),
            ],
          ),
          Card(
            elevation: 0,
            child: Row(
              children: [
                Icon(
                  Icons.newspaper,
                  color: Colors.grey,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Items1",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorConstant.default_color),
                    ))
              ],
            ),
          ),
          Divider(),
          Card(
            elevation: 0,
            child: Row(
              children: [
                Icon(
                  Icons.category,
                  color: Colors.grey,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Items2",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorConstant.default_color),
                    ))
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
