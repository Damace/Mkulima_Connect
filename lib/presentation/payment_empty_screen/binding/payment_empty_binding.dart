import '../controller/payment_empty_controller.dart';
import 'package:get/get.dart';

class PaymentEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentEmptyController());
  }
}
