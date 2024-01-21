import 'package:flutter/services.dart';

import 'controller/edit_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';

class EditProfileScreen extends GetWidget<EditProfileController> {
  EditProfileController formController = Get.put(EditProfileController());

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: ColorConstant.default_color.withOpacity(0),
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ));
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Complete Registration as",
            style: TextStyle(fontSize: 14),
          ),
          backgroundColor: ColorConstant.default_color,
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.sell_rounded),
                text: "Seller",
              ),
              Tab(
                icon: Icon(Icons.shopping_cart),
                text: "Buyer",
              ),
              Tab(
                icon: Icon(Icons.category),
                text: "Service",
              ),
              Tab(
                icon: Icon(Icons.add),
                text: "Agent",
              ),
              Tab(
                icon: Icon(Icons.person),
                text: "Other",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            sellerForm(context),
            Center(
              child: Text("Settings"),
            ),
            Center(
              child: Text("Settings"),
            ),
            Center(
              child: Text("Settings"),
            ),
            Center(
              child: Text("Settings"),
            ),
          ],
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
        floatingActionButton: Card(
            color: ColorConstant.default_color,
            shadowColor: Colors.grey,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.only(
                  topEnd: Radius.circular(50),
                  topStart: Radius.circular(50),
                  bottomEnd: Radius.circular(50),
                  bottomStart: Radius.circular(50),
                ),

                // --------------------------------------------------------------------------------------------------------------------------

                side: BorderSide(color: ColorConstant.default_color)),
            elevation: 4,
            child: InkWell(
              onTap: () {
                if (formController.fullnamekey.currentState!.validate() ||
                    formController.regionkey.currentState!.validate() ||
                    formController.postalcodekey.currentState!.validate()) {}
                //formController.updateRecord();
              },
              child: Container(
                height: MediaQuery.of(context).size.width * 0.18,
                width: MediaQuery.of(context).size.width * 0.18,
                child: Center(
                  child: Icon(
                    Icons.upload,
                    size: 50,
                    color: Colors.white,
                    semanticLabel: "Update",

                    // image: const AssetImage("assets/images/info.png"),
                    // height: 50,
                    // width: 50,
                    // fit: BoxFit.cover,
                  ),
                ),
              ),
            )),
        // floatingActionButton: Container(
        //   color: ColorConstant.default_color,
        //   height: 50,
        //   //width: double.infinity,
        //   margin: EdgeInsets.all(10),
        //   child: ElevatedButton(
        //     style: ElevatedButton.styleFrom(
        //         backgroundColor: ColorConstant.default_color),
        //     onPressed: () {
        //       if (formController.fullnamekey.currentState!.validate() ||
        //           formController.regionkey.currentState!.validate() ||
        //           formController.postalcodekey.currentState!.validate()) {}
        //       //formController.updateRecord();
        //     },
        //     child: Text("Update Account"),
        //   ),
        // ),
      ),
    );
  }

  sellerForm(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            // color: Colors.red,
            height: MediaQuery.of(context).size.height * 1.05,
            // height: 80,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Form(
                    key: formController.fullnamekey,
                    child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: "Full name",
                          prefixIcon: Icon(Icons.person),
                        ),
                        keyboardType: TextInputType.name,
                        controller: formController.fullnameController,
                        validator: (fullName) =>
                            formController.validateFullname(fullName)),
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
                      controller: formController.genderController,
                      //controller: phoneNumberController,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  Form(
                    key: formController.countrykey,
                    child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: "Country",
                          prefixIcon: Icon(Icons.location_on),
                        ),
                        keyboardType: TextInputType.text,
                        controller: formController.countryController,
                        validator: (country) =>
                            formController.validateFullname(country)),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  Form(
                    key: formController.regionkey,
                    child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: "Region",
                          prefixIcon: Icon(Icons.location_on),
                        ),
                        keyboardType: TextInputType.text,
                        controller: formController.regionController,
                        validator: (region) =>
                            formController.validateRegion(region)),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  Form(
                    key: formController.postalcodekey,
                    child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: "Postal Code",
                          prefixIcon: Icon(Icons.location_on),
                        ),
                        keyboardType: TextInputType.phone,
                        controller: formController.postalcodeController,
                        validator: (postalCode) =>
                            formController.validateRegion(postalCode)),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  Form(
                    key: formController.sellingcodekey,
                    child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: "Selling",
                          prefixIcon: Icon(Icons.location_on),
                        ),
                        keyboardType: TextInputType.phone,
                        controller: formController.sellingController,
                        validator: (selling) =>
                            formController.validateRegion(selling)),
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
                      controller: formController.emailController,
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
                      controller: formController.passwordController,
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
                      controller: formController.confirmpasswordController,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
