import '../controller/form_detail_controller.dart';
import 'package:get/get.dart';

class FormDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FormDetailController());
  }
}
