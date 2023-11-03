import '../controller/register_form_empty_controller.dart';
import 'package:get/get.dart';

class RegisterFormEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterFormEmptyController());
  }
}
