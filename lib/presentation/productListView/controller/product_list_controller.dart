import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/preferable_screen/models/preferable_model.dart';

class ProductListController extends GetxController {
  Rx<PreferableModel> preferableModelObj = PreferableModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
