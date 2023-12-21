//import 'dart:developer';

import 'controller/register_form_empty_controller.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/domain/googleauth/google_auth_helper.dart';
import 'package:mkulima_connect/domain/facebookauth/facebook_auth_helper.dart';


// ignore: must_be_immutable
class RegisterFormEmptyScreen extends GetWidget<RegisterFormEmptyController> {
  late Color myColor;
  late Size mediaSize;
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
          Positioned(
              top: MediaQuery.of(context).size.width * 0.18,
              child: SizedBox(
                width: mediaSize.width,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      child: Card(
                        elevation: 25,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(
                                100))), // Apply elevation for a shadow effect

                        color: Color.fromARGB(255, 255, 255,
                            255), // Set the background color of the card
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image(
                            image: const AssetImage("assets/images/mclogo.png"),
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
              bottom: MediaQuery.of(context).size.width * 0.01,
              child: SizedBox(
                width: mediaSize.width,
                child: Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                              color: myColor,
                              fontSize: 32,
                              fontWeight: FontWeight.w500),
                        ),
                        _buildGreyText("Please Register with your information"),

                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015),
                        //_buildInputField(emailController),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            labelText: "Full name",
                            prefixIcon: Icon(Icons.person),
                          ),
                          keyboardType: TextInputType.name,
                          controller: controller.firstNameController,
                          onSaved: (value) {
                            controller.firstNameController =
                                value! as TextEditingController;
                          },
                          //focusNode: controller.usernameFocusNode,
                           validator: controller.usernameValidator,
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015),
                        //_buildInputField(emailController),
                        TextFormField(
                         key: controller.formEmailFieldKey,
                          decoration: InputDecoration(  
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            labelText: "Phone number",
                            prefixIcon: Icon(Icons.phone),
                          ),
                          keyboardType: TextInputType.number,
                          controller: controller.emailController,
                        //  focusNode: controller.usernameFocusNode,
                           validator: controller.emailValidator,),


                           

                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015),
                        ElevatedButton(
                          onPressed: ()  {

                           controller.register();
                         

                         /*
                               //register();
                             
                       // LoadingOverlay.show(message: 'Registering...');
                        try {
                          await controller.signup();

                          controller.signupFormKey.currentState!.save();
                          log('response signup');

                         // Get.offAllNamed(Routes.HOME);
                        } catch (err, _) {
                          printError(info: err.toString());
                        //  LoadingOverlay.hide();
                          Get.snackbar(
                            "Error",
                            err.toString(),
                            snackPosition: SnackPosition.TOP,
                            backgroundColor: Colors.red.withOpacity(.75),
                            colorText: Colors.white,
                            icon: const Icon(Icons.error, color: Colors.white),
                            shouldIconPulse: true,
                            barBlur: 20,
                          );
                        } finally {}
                      


                        

                         */
                          }
                          ,

                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 7, 105, 64),
                            shape: const StadiumBorder(),
                            elevation: 20,
                            shadowColor: myColor,
                            minimumSize: const Size.fromHeight(60),
                          ),
                          child: const Text("REGISTER"),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015),
                        Center(
                          child: Column(
                            children: [
                              _buildGreyText("Or Register with"),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.015),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Tab(
                                      icon: Image.asset(
                                          "assets/images/facebook.png")),
                                  Tab(
                                      icon: Image.asset(
                                          "assets/images/twitter.png")),
                                  Tab(
                                      icon: Image.asset(
                                          "assets/images/github.png")),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
        ]),
      ),
    );
  }

  Widget _buildGreyText(String text) {
    return Text(
      text,
      style: const TextStyle(color: Colors.grey),
    );
  }

  Widget _buildInputField(TextEditingController controller,
      {isPassword = false}) {
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

  onTapHomepage() {
    Get.toNamed(
      AppRoutes.formOtpScreen,
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
