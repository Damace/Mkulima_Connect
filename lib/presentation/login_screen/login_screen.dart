import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/domain/googleauth/google_auth_helper.dart';
import 'package:mkulima_connect/domain/facebookauth/facebook_auth_helper.dart';

// ignore: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  late Color myColor;
  late Size mediaSize;
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
              ColorFilter.mode(myColor.withOpacity(0.4), BlendMode.dstATop),
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
        children: <Widget>[
          InkWell(
            child: Card(
              elevation: 25,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(
                      100))), // Apply elevation for a shadow effect

              color: Color.fromARGB(
                  255, 255, 255, 255), // Set the background color of the card
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image(
                  image: const AssetImage("assets/images/mclogo.png"),
                  height: 120,
                  width: 120,
                ),
              ),
            ),
          ),
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

        _buildGreyText("Please login with your information"),

        const SizedBox(height: 20),

        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            labelText: "Email",
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
            labelText: "Password",
            prefixIcon: Icon(Icons.email),
          ),
          keyboardType: TextInputType.emailAddress,
          controller: controller.emailController,
          onSaved: (value) {
            //controller.email = value!;
          },
        ),
//        const SizedBox(height: 10),

        _buildRememberForgot(),
        const SizedBox(height: 20),
        _buildLoginButton(),
        const SizedBox(height: 20),
        _buildOtherLogin(),

        const SizedBox(height: 20),
        _buildRegister(),
      ],
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

  Widget _buildLoginButton() {
    return ElevatedButton(
      onPressed: () {
        debugPrint("Email : ${emailController.text}");
        debugPrint("Password : ${passwordController.text}");
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 7, 105, 64),
        shape: const StadiumBorder(),
        elevation: 20,
        shadowColor: myColor,
        minimumSize: const Size.fromHeight(60),
      ),
      child: const Text("LOGIN"),
    );
  }

  Widget _buildOtherLogin() {
    return Center(
      child: Column(
        children: [
          _buildGreyText("Or Login with"),
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

  Widget _buildRegister() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(),
        TextButton(
            onPressed: () {
              onTapRegister();
            },
            child: Text(
              "Get Registered",
              style: TextStyle(
                  color: myColor, fontSize: 16, fontWeight: FontWeight.w500),
            ))
      ],
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

  onTapTxtRegister() {
    Get.toNamed(
      AppRoutes.registerFormEmptyScreen,
    );
  }
}
