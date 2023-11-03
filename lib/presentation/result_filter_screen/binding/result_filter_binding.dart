import '../controller/result_filter_controller.dart';
import 'package:get/get.dart';

class ResultFilterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResultFilterController());
  }
}
