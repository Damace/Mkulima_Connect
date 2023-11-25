import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/home_page/api/homepage_api.dart';
import 'package:mkulima_connect/presentation/home_page/models/products_model.dart';

class ProductController extends GetxController {

  var isLoading = true.obs;
  var productList = <Products>[].obs;

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
}