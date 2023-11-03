import '../controller/payment_paypal_tab_container_controller.dart';
import 'package:get/get.dart';

class PaymentPaypalTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentPaypalTabContainerController());
  }
}
