import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/select_location_bottomsheet/models/select_location_model.dart';

class SelectLocationController extends GetxController {
  Rx<SelectLocationModel> selectLocationModelObj = SelectLocationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
