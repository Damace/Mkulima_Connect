import '../controller/product_tour_two_controller.dart';
import 'package:get/get.dart';

class ProductTourTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductTourTwoController());
  }
}
