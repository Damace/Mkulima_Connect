import '../controller/edit_form_controller.dart';
import 'package:get/get.dart';

class EditFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditFormController());
  }
}
