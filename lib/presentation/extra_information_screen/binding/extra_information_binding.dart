import '../controller/extra_information_controller.dart';
import 'package:get/get.dart';

class ExtraInformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExtraInformationController());
  }
}
