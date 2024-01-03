import 'package:get/get.dart';
import 'package:mkulima_connect/presentation/my_cart/controller/cartController.dart';

class CartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartController());
  }
}
