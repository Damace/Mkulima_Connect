import '../controller/product_tour_one_controller.dart';
import 'package:get/get.dart';

class ProductTourOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductTourOneController());
  }
}
