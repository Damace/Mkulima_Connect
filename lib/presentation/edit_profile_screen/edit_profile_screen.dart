import 'package:flutter/services.dart';
import 'package:mkulima_connect/presentation/listings_page/listings_page.dart';
import 'package:mkulima_connect/presentation/transaction_page/transaction_page.dart';
import 'package:mkulima_connect/presentation/transaction_tab_container_page/controller/transaction_tab_container_controller.dart';
import 'package:mkulima_connect/presentation/transaction_tab_container_page/models/transaction_tab_container_model.dart';

import 'controller/edit_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:mkulima_connect/widgets/app_bar/appbar_title.dart';
import 'package:mkulima_connect/widgets/app_bar/custom_app_bar.dart';
import 'package:mkulima_connect/widgets/custom_button.dart';

class EditProfileScreen extends GetWidget<EditProfileController> {
  // TransactionTabContainerController controller = Get.put( TransactionTabContainerController(TransactionTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: ColorConstant.default_color.withOpacity(0),
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ));
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstant.whiteA700,




    body: SingleChildScrollView(
     reverse: true,
      child: Container(
          width: double.maxFinite,
          padding: getPadding(left: 23, top: 17, right: 23, bottom: 17),
          child:
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
                width: getHorizontalSize(327),
                margin: getMargin(left: 0, top: 20, right: 0),
                padding: getPadding(left: 8, top: 9, right: 8, bottom: 9),
                decoration: BoxDecoration(
                    color: ColorConstant.default_color,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(32),
                          width: getHorizontalSize(273),
                          child: TabBar(
                              controller: controller.layoutController,
                              labelColor: ColorConstant.default_color,
                              labelStyle: TextStyle(
                                  fontSize: getFontSize(12),
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w600),
                              unselectedLabelColor: Colors.white,
                              unselectedLabelStyle: TextStyle(
                                  fontSize: getFontSize(12),
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w600),
                              indicator: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(16))),
                              tabs: [
                                Tab(
                                    child: Text("Buyer",
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("Seller",
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("Transporter",
                                        overflow: TextOverflow.ellipsis))
                              ])),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      )
                    ])),
            Container(
                // color: Colors.red,
                height: MediaQuery.of(context).size.height * 0.78,
                child: TabBarView(
                    controller: controller.layoutController,
                    children: [
                      //Container(),
                      functionBuyer(context),
                      Container(),
                      Container(),
      
                      //TransactionPage(),
      
                      //ListingsPage(),
                      //ListingsPage()
                    ])),
            Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom))
          ])),
    ),
    ));
  }

  onTapArrowleft14() {
    Get.back();
  }

  functionBuyer(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Container(
            // color: Colors.red,
            height: MediaQuery.of(context).size.height * 1.0,
            // height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Form(
                  // key: formkey,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Full name",
                      prefixIcon: Icon(Icons.person),
                    ),
                    keyboardType: TextInputType.name,
                    //controller: phoneNumberController,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                Form(
                  // key: formkey,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Gender",
                      prefixIcon: Icon(Icons.generating_tokens),
                    ),
                    keyboardType: TextInputType.name,
                    //controller: phoneNumberController,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                Form(
                  // key: formkey,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Country",
                      prefixIcon: Icon(Icons.location_on),
                    ),
                    keyboardType: TextInputType.text,
                    //controller: phoneNumberController,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                Form(
                  // key: formkey,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Region",
                      prefixIcon: Icon(Icons.location_on),
                    ),
                    keyboardType: TextInputType.text,
                    //controller: phoneNumberController,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                Form(
                  // key: formkey,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Postal Code",
                      prefixIcon: Icon(Icons.location_on),
                    ),
                    keyboardType: TextInputType.phone,
                    //controller: phoneNumberController,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                Form(
                  // key: formkey,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    //controller: phoneNumberController,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                Form(
                  // key: formkey,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock),
                    ),
                    keyboardType: TextInputType.text,
                    //controller: phoneNumberController,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                Form(
                  // key: formkey,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Confirm password",
                      prefixIcon: Icon(Icons.lock),
                    ),
                    keyboardType: TextInputType.text,
                    //controller: phoneNumberController,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                Container(
                  color: ColorConstant.default_color,
                  height: MediaQuery.of(context).size.height * 0.065,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 7, 105, 64),
                      shape: const StadiumBorder(),
                      elevation: 20,
                      //shadowColor: myColor,
                      minimumSize: const Size.fromHeight(60),
                    ),
                    child: const Text("Create Account"),
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
