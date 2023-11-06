import 'controller/register_form_empty_controller.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/domain/googleauth/google_auth_helper.dart';
import 'package:mkulima_connect/domain/facebookauth/facebook_auth_helper.dart';

// ignore: must_be_immutable
class RegisterFormEmptyScreen extends GetWidget<RegisterFormEmptyController> {
  late Color myColor;
  late Size mediaSize;

  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController phonenumberController = TextEditingController();
  TextEditingController contryController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController postalcodeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberUser = false;

  @override
  Widget build(BuildContext context) {
    myColor = Theme.of(context).primaryColor;
    mediaSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: myColor,
        image: DecorationImage(
          image: const AssetImage("assets/images/bg.png"),
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(myColor.withOpacity(0.2), BlendMode.dstATop),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Positioned(top: 80, child: _buildTop()),
          Positioned(bottom: 0, child: _buildBottom()),
        ]),
      ),
    );
  }

  Widget _buildTop() {
    return SizedBox(
      width: mediaSize.width,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.location_on_sharp,
            size: 100,
            color: Colors.white,
          ),
          Text(
            "GO MAP",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
                letterSpacing: 2),
          )
        ],
      ),
    );
  }

  Widget _buildBottom() {
    return SizedBox(
      width: mediaSize.width,
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        )),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: _buildForm(),  
        ),
      ),
    );
  }

  Widget _buildForm() {

    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

      
        Text(
          "Welcome",
          style: TextStyle(
              color: myColor, fontSize: 32, fontWeight: FontWeight.w500),
        ),
        _buildGreyText("Please Register with your information"),


        const SizedBox(height: 20),
        //_buildInputField(emailController),
           TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "First name",
                      prefixIcon: Icon(Icons.person),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    controller: controller.emailController,
                    onSaved: (value) {
                      //controller.email = value!;
                    },
                  ),
//        const SizedBox(height: 10),

        const SizedBox(height: 20),
        //_buildInputField(emailController),
           TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Last name",
                      prefixIcon: Icon(Icons.person),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    controller: controller.emailController,
                    onSaved: (value) {
                      //controller.email = value!;
                    },
                  ),
                   const SizedBox(height: 20),
        //_buildInputField(emailController),
           TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    controller: controller.emailController,
                    onSaved: (value) {
                      //controller.email = value!;
                    },
                  ),
//        const SizedBox(height: 10),


        const SizedBox(height: 10),



        //_buildGreyText("Password"),
        //_buildInputField(passwordController, isPassword: true),
        //const SizedBox(height: 10),
        //_buildRememberForgot(),
        const SizedBox(height: 10),
        _buildLoginButton(),
        const SizedBox(height: 10),
        _buildOtherLogin(),
      ],
    );
  }

  Widget _buildGreyText(String text) {
    return Text(
      text,
      style: const TextStyle(color: Colors.grey),
    );
  }

  Widget _buildInputField(TextEditingController controller, {isPassword = false}) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: isPassword ? Icon(Icons.remove_red_eye) : Icon(Icons.done),
      ),
      obscureText: isPassword,
    );
  }

  Widget _buildRememberForgot() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(value: rememberUser, onChanged: (value) {}),
            _buildGreyText("Remember me"),
          ],
        ),
        TextButton(
            onPressed: () {}, child: _buildGreyText("I forgot my password"))
      ],
    );
  }

  Widget _buildLoginButton() {
    return ElevatedButton(
      onPressed: () {
        onTapHomepage();
        debugPrint("Email : ${emailController.text}");
        debugPrint("Password : ${passwordController.text}");
      },
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        elevation: 20,
        shadowColor: myColor,
        minimumSize: const Size.fromHeight(60),
      ),
      child: const Text("REGISTER"),
    );
  }

  Widget _buildOtherLogin() {
    return Center(
      child: Column(
        children: [
          _buildGreyText("Or Register with"),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Tab(icon: Image.asset("assets/images/facebook.png")),
              Tab(icon: Image.asset("assets/images/twitter.png")),
              Tab(icon: Image.asset("assets/images/github.png")),
            ],
          )
        ],
      ),
    );
  }

  
 onTapHomepage() {
    Get.toNamed(
       AppRoutes.homeContainerScreen,
    );
  }

  onTapRegister() {
    Get.toNamed(
      AppRoutes.registerFormEmptyScreen,
    );
  }

  onTapArrowleft11() {
    Get.back();
  }

  onTapContinuewithemail() {
    Get.toNamed(
      AppRoutes.formEmptyScreen,
    );
  }

  onTapImgGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapImgFacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }


}
