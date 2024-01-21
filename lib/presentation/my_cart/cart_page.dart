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
          title: Text("My Cart"),
          actions: [
            InkWell(
              onTap: () {
                productController.clearCart();
                Get.offAll(ServicesScreen());
              },
              child: Container(
                padding: EdgeInsets.all(8), 
                alignment: Alignment.center,
                child: Text("Clear All"),
              ),
            )
          ],
        ),
      body: Obx(()=>
          Stack(
            children: [

              ListView.builder(
                  itemCount: productController.cartList.length,
                  itemBuilder: (context,index){
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
                                          image: NetworkImage(productController.cartList[index].imageUrl!)
                                      )
                                  ),
                                ),

                                Expanded(
                                  child: Container(
                                    child: Text(productController.cartList[index].name!,),
                                  ),
                                ),

                                InkWell(
                                  onTap: (){
                                    productController.removeFromCart(productController.cartList[index]);
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(8.0),
                                    child: Icon(Icons.delete_outline_sharp,color: Colors.red,),
                                  ),
                                )

                              ],
                            ),
                            Container(
                              child: Text("Tsh."+productController.productList[index].price!.toString(),
                                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            ),
                            Divider(),

                          ],
                        )
                    );
                  }
              ),

              Positioned(
                bottom: 100,
                child: Card(
                  color: Colors.brown,
                  child: Container(
                    padding: EdgeInsets.all(16),
                    child: Obx(()=>Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        Container(
                          child: Text("${productController.count} products available",
                            style: TextStyle(color: Colors.white),),
                        ),

                        Container(
                          child: Text("Total Price: Rs.${productController.totalPrice}",
                          style: TextStyle(color: Colors.white),),
                        )

                      ],
                    ))
                  ),
                ),
              )

            ],
          )
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
           // openCheckout();
          },
          label: Text("Checkout")
      ),
    );
  }
}
