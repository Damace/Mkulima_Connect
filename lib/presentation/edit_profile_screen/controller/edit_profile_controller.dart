import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/edit_profile_screen/models/edit_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/presentation/transaction_tab_container_page/models/transaction_tab_container_model.dart';

class EditProfileController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController usernameController = TextEditingController();

  TextEditingController phonenumberController = TextEditingController();

  Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  late Rx<TransactionTabContainerModel> transactionTabContainerModelObj;

  late TabController layoutController =
      Get.put(TabController(vsync: this, length: 3));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    usernameController.dispose();
    phonenumberController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    editProfileModelObj.value.dropdownItemList.value.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    editProfileModelObj.value.dropdownItemList.refresh();
  }
}
