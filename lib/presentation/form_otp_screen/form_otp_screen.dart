import 'package:mkulima_connect/presentation/register_form_empty_screen/controller/auth_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'controller/form_otp_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/widgets/custom_button.dart';
import 'package:mkulima_connect/widgets/custom_icon_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class FormOtpScreen extends GetWidget<FormOtpController> {
  late Color myColor;
  late Size mediaSize;

  final formkey = GlobalKey<FormState>();
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    myColor = Theme.of(context).primaryColor;
    mediaSize = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstant.whiteA700,
      body: Container(
          width: double.maxFinite,
          padding: getPadding(left: 24, top: 22, right: 24, bottom: 22),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomIconButton(
                    height: 50,
                    width: 50,
                    margin: getMargin(top: 1),
                    variant: IconButtonVariant.FillGray100,
                    shape: IconButtonShape.CircleBorder25,
                    padding: IconButtonPadding.PaddingAll16,
                    onTap: () {
                      onTapBtnArrowleft();
                    },
                    child:
                        CustomImageView(svgPath: ImageConstant.imgArrowleft)),
                Container(
                    width: getHorizontalSize(248),
                    margin: getMargin(top: 54, right: 79),
                    child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "lbl_enter_the".tr,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 105, 64),
                                  fontSize: getFontSize(25),
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: getHorizontalSize(0.75))),
                          TextSpan(
                              text: "msg_verification_code".tr,
                              style: TextStyle(
                                  color: ColorConstant.default_color,
                                  fontSize: getFontSize(25),
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: getHorizontalSize(0.75)))
                        ]),
                        textAlign: TextAlign.left)),
                Container(
                    width: getHorizontalSize(248),
                    margin: getMargin(top: 25, right: 78),
                    child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "msg_enter_thpe_4_digit2".tr,
                              style: TextStyle(
                                  color: ColorConstant.default_color,
                                  fontSize: getFontSize(12),
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: getHorizontalSize(0.36))),
                          TextSpan(
                              text: "lbl_user".tr,
                              style: TextStyle(
                                  color: ColorConstant.default_color,
                                  fontSize: getFontSize(12),
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: getHorizontalSize(0.36))),
                          TextSpan(
                              text: "lbl37".tr,
                              style: TextStyle(
                                  color: ColorConstant.default_color,
                                  fontSize: getFontSize(12),
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: getHorizontalSize(0.36))),
                          TextSpan(
                              text: "lbl_email_com".tr,
                              style: TextStyle(
                                  color: ColorConstant.default_color,
                                  fontSize: getFontSize(12),
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: getHorizontalSize(0.36)))
                        ]),
                        textAlign: TextAlign.left)),
                Padding(
                    padding: getPadding(top: 50),
                    child: Form(
                      key: formkey,
                      child: PinCodeTextField(
                          appContext: context,
                          controller: otpController,
                          length: 6,
                          obscureText: false,
                          obscuringCharacter: '*',
                          keyboardType: TextInputType.number,
                          autoDismissKeyboard: true,
                          enableActiveFill: true,
                          validator: (value) {
                            if (otpController == null) {
                              return 'This field is required';
                            }
                          },
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onChanged: (value) {},
                          pinTheme: PinTheme(
                              fieldHeight: getHorizontalSize(40),
                              fieldWidth: getHorizontalSize(40),
                              shape: PinCodeFieldShape.box,
                              borderRadius:
                                  BorderRadius.circular(getHorizontalSize(25)),
                              selectedFillColor: ColorConstant.gray100,
                              activeFillColor: ColorConstant.gray100,
                              inactiveFillColor: ColorConstant.gray100,
                              inactiveColor: ColorConstant.default_color,
                              selectedColor: ColorConstant.default_color,
                              activeColor: ColorConstant.default_color)),
                    )),
                Spacer(),
                CustomButton(
                    height: getVerticalSize(50),
                    width: getHorizontalSize(90),
                    text: "lbl_00_21".tr,
                    variant: ButtonVariant.FillGray100,
                    shape: ButtonShape.CircleBorder25,
                    padding: ButtonPadding.PaddingT17,
                    fontStyle: ButtonFontStyle.MontserratMedium12Bluegray80001,
                    prefixWidget: Container(
                        margin: getMargin(right: 8),
                        child:
                            CustomImageView(svgPath: ImageConstant.imgClock)),
                    alignment: Alignment.center),
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                        padding: getPadding(top: 22),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("msg_didn_t_receive_the".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRalewayRegular12.copyWith(
                                      letterSpacing: getHorizontalSize(0.36))),
                              Padding(
                                  padding: getPadding(left: 4),
                                  child: TextButton(
                                    child: Text("lbl_resend_otp".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtdefaultcolor
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.36))),
                                    onPressed: () {},
                                  ))
                            ])))
              ])),
      bottomNavigationBar: CustomButton(
          // color: ColorConstant.default_color,
          height: getVerticalSize(70),
          text: "Verify OTP",
          margin: getMargin(left: 24, right: 24, bottom: 24),
          onTap: () {
            if (formkey.currentState!.validate()) {
              AuthService.loginWithOtp(otp: otpController.text)
                  .then((value) async {
                if (value == "Success") {
                  Get.toNamed(
                    AppRoutes.services,
                  );
                  final SharedPreferences pref =
                      await SharedPreferences.getInstance();
                  pref.setString("phoneVerified", "true");

                  Get.snackbar(
                    "Successfully",
                    "Your phone number has Verified",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.green,
                    colorText: Colors.white,
                    icon: const Icon(Icons.error, color: Colors.white),
                    shouldIconPulse: true,
                    barBlur: 20,
                  );
                } else {
                  Get.snackbar(
                    "Error",
                    "Invalid OTP Codes",
                    snackPosition: SnackPosition.TOP,
                    backgroundColor: Colors.red,
                    colorText: Colors.white,
                    icon: const Icon(Icons.error, color: Colors.white),
                    shouldIconPulse: true,
                    barBlur: 20,
                  );
                }
              });
            }
          }),
    ));
  }

  Widget _buildLoginButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 7, 105, 64),
        shape: const StadiumBorder(),
        elevation: 20,
        shadowColor: myColor,
        minimumSize: const Size.fromHeight(60),
      ),
      child: const Text("Verify OTP"),
    );
  }

  onTapBtnArrowleft() {
    Get.back();
  }

  onTapSubmit() {
    Get.toNamed(
      AppRoutes.locationEmptyScreen,
    );
  }
}
