import '../controller/top_agents_profile_detail_tab_container_controller.dart';
import 'package:get/get.dart';

class TopAgentsProfileDetailTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopAgentsProfileDetailTabContainerController());
  }
}
