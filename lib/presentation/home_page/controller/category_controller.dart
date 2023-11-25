import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/home_page/api/homepage_api.dart';
import 'package:mkulima_connect/presentation/home_page/models/category_model.dart';
class CategoryController extends GetxController {

  var isLoading = true.obs;
  var categoryList = <Category>[].obs;

  @override
  void onInit() {
   fetchCategory_data();
    super.onInit();
  }

  void fetchCategory_data() async {
    try {
      isLoading(true);
      var items = await GetCategory.fetchCategory();
      if (items != null) {
        categoryList.value = items;
      }
    } finally {
      isLoading(false);
    }
  }
}