import '../controller/real_estates_list_by_category_controller.dart';
import 'package:get/get.dart';

class RealEstatesListByCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RealEstatesListByCategoryController());
  }
}
