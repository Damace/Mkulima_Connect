import 'dart:convert';

import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/edit_profile_screen/models/edit_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mkulima_connect/presentation/transaction_tab_container_page/models/transaction_tab_container_model.dart';

class EditProfileController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  late Rx<TransactionTabContainerModel> transactionTabContainerModelObj;

  late TabController layoutController0 =
      Get.put(TabController(vsync: this, length: 3));

  TextEditingController fullnameController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController regionController = TextEditingController();
  TextEditingController sellingController = TextEditingController();
  TextEditingController postalcodeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  final fullnamekey = GlobalKey<FormState>();
  final countrykey = GlobalKey<FormState>();
  final regionkey = GlobalKey<FormState>();
  final postalcodekey = GlobalKey<FormState>();
  final sellingcodekey = GlobalKey<FormState>();
  final emailcodekey = GlobalKey<FormState>();
  final passwordcodekey = GlobalKey<FormState>();
  final confirmpasswordcodekey = GlobalKey<FormState>();

  validateFullname(fullName) {
    if (fullName == null || fullName.trim().isEmpty) {
      return 'Full name is Required';
    }
    // if (fullName.trim().length < 3) {
    //   return 'Password must be at least 8 characters in length';
    // }
    // Return null if the entered password is valid
    return null;
  }

  validateCountry(country) {
    if (country == null || country.trim().isEmpty) {
      return 'Country name is Required';
    }
    // if (country.trim().length < 3) {
    //   return 'Password must be at least 8 characters in length';
    // }
    // Return null if the entered password is valid
    return null;
  }

  validateRegion(region) {
    if (region == null || region.trim().isEmpty) {
      return 'Region name is Required';
    }
    return null;
  }

  validatepostalCode(postalCode) {
    if (postalCode == null || postalCode.trim().isEmpty) {
      return 'Postal code is Required';
    }
    if (postalCode.trim().length > 4 || postalCode.trim().length < 6) {
      return 'Postal Codes required is 6 Character';
    }
    return null;
  }

  validateselling(selling) {
    if (selling == null || selling.trim().isEmpty) {
      return 'Selling field required';
    }
    // if (.trim().length > 4 || postalCode.trim().length < 6) {
    //   return 'Postal Codes required is 6 Character';
    // }
    return null;
  }

  Future<void> updateRecord() async {
    if (fullnameController.text.isEmpty ||
        genderController.text.isEmpty ||
        countryController.text.isEmpty ||
        regionController.text.isEmpty ||
        postalcodeController.text.isEmpty ||
        passwordController.text.isEmpty ||
        confirmpasswordController.text.isEmpty) {
      Get.snackbar(
        "Not Inserted",
        "Error",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        icon: const Icon(Icons.error, color: Colors.white),
        shouldIconPulse: true,
        barBlur: 20,
      );
    }

    try {
      String uri =
          "http://192.168.221.158/MkulimaKonekti/Controller/product/routes/routes.php/update_client";
      var res = await http.post(Uri.parse(uri), body: {
        "phoneid": "0762700405",
        "fullname": fullnameController.text,
        "category": "buyer",
        "gender": genderController.text,
        "country": countryController.text,
        "region": regionController.text,
        "postalcode": postalcodeController.text,
        "email": emailController.text,
        "password": passwordController.text
      });

      var rensponse = jsonDecode(res.body);

      print(rensponse);

      if (rensponse["message"] == "Updated successfully") {
        Get.snackbar(
          "Successfully",
          "Account has been Updated Successfully",
          snackPosition: SnackPosition.TOP,
          backgroundColor: Color.fromARGB(255, 35, 135, 40),
          colorText: Colors.white,
          icon: const Icon(Icons.error, color: Colors.white),
          shouldIconPulse: true,
          barBlur: 20,
        );
      } else {
        Get.snackbar(
          "Not Inserted",
          "Error",
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
          icon: const Icon(Icons.error, color: Colors.white),
          shouldIconPulse: true,
          barBlur: 20,
        );
      }
    } catch (e) {
      print(e);
    }

    @override
    void onReady() {
      super.onReady();
    }

    @override
    void onClose() {
      super.onClose();
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
}
