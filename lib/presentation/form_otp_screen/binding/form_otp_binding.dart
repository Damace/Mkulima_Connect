import '../controller/form_otp_controller.dart';
import 'package:get/get.dart';

class FormOtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FormOtpController());
  }
}
