import '../controller/form_empty_controller.dart';
import 'package:get/get.dart';

class FormEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FormEmptyController());
  }
}
