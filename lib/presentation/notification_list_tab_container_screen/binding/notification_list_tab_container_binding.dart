import '../controller/notification_list_tab_container_controller.dart';
import 'package:get/get.dart';

class NotificationListTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationListTabContainerController());
  }
}
