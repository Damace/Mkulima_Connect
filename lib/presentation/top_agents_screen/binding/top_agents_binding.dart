import '../controller/top_agents_controller.dart';
import 'package:get/get.dart';

class TopAgentsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopAgentsController());
  }
}
