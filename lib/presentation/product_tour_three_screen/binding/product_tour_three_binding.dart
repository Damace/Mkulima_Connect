import '../controller/product_tour_three_controller.dart';
import 'package:get/get.dart';

class ProductTourThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductTourThreeController());
  }
}
