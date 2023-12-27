import 'package:mkulima_connect/core/app_export.dart';

import 'package:mkulima_connect/presentation/register_form_empty_screen/models/register_form_empty_model.dart';

class RegisterFormEmptyController extends GetxController {
  Rx<RegisterFormEmptyModel> registerFormEmptyModelObj =
      RegisterFormEmptyModel().obs;

  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

/*

  String? usernameValidator(String? value) {
    // if(fieldLostFocus == usernameController.hashCode)
    log('usernameValidator-----');
    if (value == null || value.trim().isEmpty) {
      return 'This field is required';
    }
    if (value.trim().length < 4) {
      return 'Username must be at least 4 characters in length';
    }
    // Return null if the entered username is valid
    return null;
  }

  String? emailValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter your email address';
    }
    // Check if the entered email has the right format
    if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    // Return null if the entered email is valid
    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'This field is required';
    }
    if (value.trim().length < 3) {
      return 'Password must be at least 8 characters in length';
    }
    // Return null if the entered password is valid
    return null;
  }

  String? validator(String? value) {
    log('validatoooor');

    if (value != null && value.isEmpty) {
      return 'Please this field must be filled';
    }
    return null;
  }

*/

/*

   static Future<List<Category>?> fetchCategory() async {
    var response = await client.get(Uri.parse(
        'http://mkonekt.scienceontheweb.net/mkulimaApp/category/getCategory.php'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return categoryFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }

*/

  Future<void> registerrrrrrr() async {
    // Get.toNamed(
    // AppRoutes.formOtpScreen,
    //);

/*

    if (firstNameController.text != "" ||
        lastNameController.text != "" ||
        emailController.text != "" ||
        passwordController.text != "") {
      firstNameController.clear();
      lastNameController.clear();
      emailController.clear();
      passwordController.clear();

      String url =
          "http://192.168.0.100/mkulimaKonekti/product/routes/routes.php/userReg";
      var response = await http.post(Uri.parse(url), body: {
        "first_name": firstNameController.text,
        "last_name": lastNameController.text,
        "email": emailController.text,
        "password": passwordController.text
      });

      //final result = json.decode(response.body);
      if (response.statusCode == 200) {
        Get.toNamed(
          AppRoutes.formOtpScreen,
        );

        Get.snackbar(
          "Successfully Registered",
          "",
          snackPosition: SnackPosition.TOP,
          backgroundColor: Color.fromARGB(255, 35, 135, 40),
          colorText: Colors.white,
          icon: const Icon(Icons.error, color: Colors.white),
          shouldIconPulse: true,
          barBlur: 20,
        );
      } else {
        Get.snackbar(
          "Something went wrong",
          "",
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red.withOpacity(.2),
          colorText: Colors.white,
          icon: const Icon(Icons.error, color: Colors.white),
          shouldIconPulse: true,
          barBlur: 20,
        );
      }
    } else {
      Get.snackbar(
        "Error",
        "All fields are Required",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red.withOpacity(.75),
        colorText: Colors.white,
        icon: const Icon(Icons.error, color: Colors.white),
        shouldIconPulse: true,
        barBlur: 20,
      );
    }

*/
  }
}
