import 'dart:math';

import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/home_page/api/homepage_api.dart';
import 'package:mkulima_connect/presentation/home_page/models/products_model.dart';

class ProductController extends GetxController {
  var productList = <Products>[].obs;
  var searchList = <Products>[].obs;
  var cartList = <Products>[].obs;
  var isLoading = true.obs;

  double get totalPrice => cartList.fold(0, (sum, item) => sum + item.price!);

  int get count => cartList.length;

  @override
  void onInit() {
    fetchProducts();

    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await GetProduct.fetchProducts();
      if (products != null) {
        productList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }

  void addToCart(Products item) {
    cartList.add(item);
  }

  void removeFromCart(Products item) {
    cartList.removeWhere((element) => element.productid == item.productid);
  }

  void clearCart() {
    cartList.clear();
  }

  void onTextChanged(String text) {
    searchList.clear();
    if (text.isEmpty) {
      productList.forEach((element) {
        searchList.add(element);
      });
    } else {
      productList.forEach((element) {
        if (element.name!.toLowerCase().contains(text)) {
          searchList.add(element);
        }
      });
    }
  }
}
