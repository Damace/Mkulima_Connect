import '../controller/horizontal_controller.dart';
import 'package:get/get.dart';

class HorizontalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HorizontalController());
  }
}
