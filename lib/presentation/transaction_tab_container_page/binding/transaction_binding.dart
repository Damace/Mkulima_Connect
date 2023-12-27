
import 'package:get/get.dart';
import 'package:mkulima_connect/presentation/transaction_tab_container_page/transaction_tab_container_page.dart';

class TransactionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransactionTabContainerPage());
  }
}
