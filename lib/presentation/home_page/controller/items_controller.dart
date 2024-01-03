import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/home_page/api/homepage_api.dart';
import 'package:mkulima_connect/presentation/services/modal/item_model.dart';

class ItemController extends GetxController {
  var isLoading = true.obs;
  var itemsList = <Items>[].obs;

  get isAddLoading => null;

  @override
  void onInit() {
    fetchItem();
    super.onInit();
    
  }

  void fetchItem() async {
    try {
      isLoading(true);
      var itemdata = await GetDataList.fetchItems();
      if (itemdata != null) {
        itemsList.value = itemdata.cast<Items>();
      }
    } finally {
      isLoading(false);
    }
  }

  void addToCart() {}
}
