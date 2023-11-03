import 'controller/payment_paypal_controller.dart';
import 'models/payment_paypal_model.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/widgets/custom_text_form_field.dart';

class PaymentPaypalPage extends StatelessWidget {
  PaymentPaypalController controller =
      Get.put(PaymentPaypalController(PaymentPaypalModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 20,
                    right: 24,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomTextFormField(
                        focusNode: FocusNode(),
                        controller: controller.nameController,
                        hintText: "lbl_jonathan3".tr,
                        fontStyle: TextFormFieldFontStyle
                            .RalewaySemiBold12Bluegray80001,
                        textInputAction: TextInputAction.done,
                        suffix: Container(
                          margin: getMargin(
                            left: 30,
                            top: 25,
                            right: 16,
                            bottom: 25,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(
                                getHorizontalSize(
                                  50,
                                ),
                              ),
                              bottomRight: Radius.circular(
                                getHorizontalSize(
                                  50,
                                ),
                              ),
                            ),
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgUser20x20,
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: getVerticalSize(
                            70,
                          ),
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          top: 15,
                        ),
                        padding: getPadding(
                          left: 16,
                          top: 25,
                          right: 16,
                          bottom: 25,
                        ),
                        decoration: AppDecoration.fillGray100.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder12,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 4,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_user".tr,
                                      style: TextStyle(
                                        color: ColorConstant.blueGray80001,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: getHorizontalSize(
                                          0.36,
                                        ),
                                      ),
                                    ),
                                    TextSpan(
                                      text: "lbl_email_com2".tr,
                                      style: TextStyle(
                                        color: ColorConstant.blueGray80001,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: getHorizontalSize(
                                          0.36,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowdown,
                              height: getSize(
                                20,
                              ),
                              width: getSize(
                                20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imageNotFound,
                        height: getVerticalSize(
                          1,
                        ),
                        width: getHorizontalSize(
                          100,
                        ),
                        margin: getMargin(
                          top: 30,
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          327,
                        ),
                        margin: getMargin(
                          top: 10,
                        ),
                        padding: getPadding(
                          left: 30,
                          top: 25,
                          right: 145,
                          bottom: 25,
                        ),
                        decoration: AppDecoration.txtFillIndigoA400.copyWith(
                          borderRadius: BorderRadiusStyle.txtCircleBorder35,
                        ),
                        child: Text(
                          "lbl_next".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRalewaySemiBold16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
