import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/home_page/api/homepage_api.dart';
import 'package:mkulima_connect/presentation/home_page/models/employee_model.dart';


class ProductController extends GetxController {

  var isLoading = false.obs;
  var productList = <Products>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  fetchData() async {
    try {
      isLoading(true);
      var products = await HomepageApi.fetchdata();
      if (products != null) {
        productList.assignAll(products);
      }
    } finally {
      isLoading(false);
    }
  }

}
