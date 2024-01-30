import 'package:flutter/services.dart';
import 'package:mkulima_connect/presentation/home_page/home_page.dart';

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
      length: 4,
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
                text: "Seller\n",
              ),
              Tab(
                icon: Icon(Icons.shopping_cart),
                text: "Buyer\n",
              ),
              Tab(
                icon: Icon(Icons.add),
                text: "Agent\n",
              ),
              Tab(
                icon: Icon(Icons.category),
                text: "Service\nProvider",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            sellerForm(context),
            buyerForm2(context),
            agentForm(context),
            serviceForm(context)
          ],
        ),

        bottomNavigationBar: BottomNavigationBar(
          elevation: 50,
          backgroundColor: ColorConstant.default_color,
          selectedLabelStyle: TextStyle(color: Colors.white),
          unselectedLabelStyle: TextStyle(color: Colors.white),
          items: [
            BottomNavigationBarItem(
                icon: InkWell(
                  onTap: () {
                    // Get.to(HomePage(),
                    //     duration: Duration(seconds: 1),
                    //     transition: Transition.rightToLeft //transition effect
                    //     );

                    Get.to(() => HomePage());
                  },
                  child: Icon(
                    Icons.shop_2,
                    color: ColorConstant.whiteA700,
                  ),
                ),
                label: 'Shop'),
            // BottomNavigationBarItem(
            //     icon: InkWell(
            //       child: Badge(
            //         label: Text("0"),
            //         child: Icon(
            //           Icons.notification_important_rounded,
            //           color: ColorConstant.whiteA700,
            //         ),
            //       ),
            //     ),
            //     label: 'Notification'),
            BottomNavigationBarItem(
                icon: InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.person_3_rounded,
                    color: ColorConstant.default_color,
                  ),
                ),
                label: ''),
          ],
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
        floatingActionButton: Card(
            color: ColorConstant.default_color,
            shadowColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.only(
                  topEnd: Radius.circular(50),
                  topStart: Radius.circular(50),
                  bottomEnd: Radius.circular(50),
                  bottomStart: Radius.circular(50),
                ),

                // --------------------------------------------------------------------------------------------------------------------------

                side: BorderSide(color: ColorConstant.whiteA700)),
            elevation: 15,
            child: InkWell(
              onTap: () {
                if (formController.fullnamekey.currentState!.validate() ||
                    formController.regionkey.currentState!.validate() ||
                    formController.postalcodekey.currentState!.validate() ||
                    formController.countrykey.currentState!.validate()) {}
                formController.updateRecord();
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
                          isDense: true,
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
                  Obx(
                    () => Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey)),
                      child: Form(
                        key: formController.genderkey,
                        child: DropdownButton<String>(
                          isDense: true,
                          hint: Row(children: [
                            Icon(Icons.person_2, color: Colors.grey),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Gender",
                              style: TextStyle(color: Colors.grey),
                            )
                          ]),
                          padding: EdgeInsets.all(10),
                          isExpanded: true,
                          underline: SizedBox(),
                          value: formController.selectedItem.value == ""
                              ? null
                              : formController.selectedItem.value,
                          onChanged: (newValue) {
                            formController.updateGender(newValue.toString());
                          },
                          items: ['Male', 'Female']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  Obx(
                    () => Visibility(
                      visible: formController.isVisible.value,
                      child: Text(
                        'This text is visible!',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ),
                  //    ElevatedButton(
                  //   onPressed: () {
                  //     // Toggle visibility when the button is pressed
                  //     formController.isVisible.toggle();
                  //   },
                  //   child: Text('Toggle Visibility'),
                  // ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  Form(
                    key: formController.countrykey,
                    child: TextFormField(
                        decoration: InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: "Country",
                          prefixIcon: Icon(Icons.location_on),
                        ),
                        keyboardType: TextInputType.text,
                        controller: formController.countryController,
                        validator: (country) =>
                            formController.validateCountry(country)),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  Form(
                    key: formController.regionkey,
                    child: TextFormField(
                        decoration: InputDecoration(
                          isDense: true,
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
                          isDense: true,
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
                    child: Obx(
                      () => Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey)),
                        child: DropdownButton(
                          isDense: true,
                          hint: Row(children: [
                            Icon(Icons.sell_rounded, color: Colors.grey),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Selling interest",
                              style: TextStyle(color: Colors.grey),
                            )
                          ]),
                          padding: EdgeInsets.all(10),
                          isExpanded: true,
                          underline: SizedBox(),
                          value: formController.selectedSelling.value == ""
                              ? null
                              : formController.selectedSelling.value,
                          onChanged: (newValue) {
                            formController.updateSelling(newValue.toString());
                          },
                          items: [
                            'Food Crops',
                            'Cash Crops',
                            'Nuts Spices',
                            'Livestock',
                            'Fish',
                            'Cooking Oils'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  Form(
                    // key: formkey,
                    child: TextFormField(
                      decoration: InputDecoration(
                        isDense: true,
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
                      obscureText: formController.passwordSecured,
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          onPressed: () {
                            // Obx(() =>  formController.passwordSecured.)
                          },
                          icon: Icon(Icons.visibility_off),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      controller: formController.passwordController,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  Form(
                    // key: formkey,
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: "Confirm password",
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          onPressed: () {
                            // Obx(() =>  formController.passwordSecured.)
                          },
                          icon: Icon(Icons.visibility_off),
                        ),
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

  buyerForm2(context) {
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
                      children: [
                        Form(
                          // key: formController.fullnamekey,
                          child: TextFormField(
                              decoration: InputDecoration(
                                isDense: true,
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
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015),
                        Obx(
                          () => Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey)),
                            child: DropdownButton<String>(
                              isDense: true,
                              hint: Row(children: [
                                Icon(Icons.person_2, color: Colors.grey),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Gender",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ]),
                              padding: EdgeInsets.all(10),
                              isExpanded: true,
                              underline: SizedBox(),
                              value: formController.selectedItem.value == ""
                                  ? null
                                  : formController.selectedItem.value,
                              onChanged: (newValue) {
                                formController
                                    .updateGender(newValue.toString());
                              },
                              items: [
                                'Male',
                                'Female'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015),
                        Form(
                          // key: formController.countrykey,
                          child: TextFormField(
                              decoration: InputDecoration(
                                isDense: true,
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
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015),
                        Form(
                          // key: formController.regionkey,
                          child: TextFormField(
                              decoration: InputDecoration(
                                isDense: true,
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
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015),
                        Form(
                          // key: formController.postalcodekey,
                          child: TextFormField(
                              decoration: InputDecoration(
                                isDense: true,
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
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015),
                        Form(
                          // key: formController.sellingcodekey,
                          child: Obx(
                            () => Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.grey)),
                              child: DropdownButton(
                                isDense: true,
                                hint: Row(children: [
                                  Icon(Icons.sell_rounded, color: Colors.grey),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Selling",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ]),
                                padding: EdgeInsets.all(10),
                                isExpanded: true,
                                underline: SizedBox(),
                                value: formController.selectedSeling.value == ""
                                    ? null
                                    : formController.selectedSeling.value,
                                onChanged: (newValue) {
                                  formController
                                      .upDateSellingItem(newValue.toString());
                                },
                                items: [
                                  'Male',
                                  'Female'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015),
                        Form(
                          // key: formkey,
                          child: TextFormField(
                            decoration: InputDecoration(
                              isDense: true,
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
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015),
                        Form(
                          // key: formkey,
                          child: TextFormField(
                            obscureText: formController.passwordSecured,
                            decoration: InputDecoration(
                              isDense: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: "Password",
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  // Obx(() =>  formController.passwordSecured.)
                                },
                                icon: Icon(Icons.visibility_off),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                            controller: formController.passwordController,
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015),
                        Form(
                          // key: formkey,
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              isDense: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: "Confirm password",
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  // Obx(() =>  formController.passwordSecured.)
                                },
                                icon: Icon(Icons.visibility_off),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                            controller:
                                formController.confirmpasswordController,
                          ),
                        ),
                      ],
                    ),
                  ),
                ))));
  }

  agentForm(context) {
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
                      children: [
                        Form(
                          // key: formController.fullnamekey,
                          child: TextFormField(
                              decoration: InputDecoration(
                                isDense: true,
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
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015),
                        Obx(
                          () => Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey)),
                            child: DropdownButton<String>(
                              isDense: true,
                              hint: Row(children: [
                                Icon(Icons.person_2, color: Colors.grey),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Gender",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ]),
                              padding: EdgeInsets.all(10),
                              isExpanded: true,
                              underline: SizedBox(),
                              value: formController.selectedItem.value == ""
                                  ? null
                                  : formController.selectedItem.value,
                              onChanged: (newValue) {
                                formController
                                    .updateGender(newValue.toString());
                              },
                              items: [
                                'Male',
                                'Female'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015),
                        Form(
                          // key: formController.countrykey,
                          child: TextFormField(
                              decoration: InputDecoration(
                                isDense: true,
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
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015),
                        Form(
                          // key: formController.regionkey,
                          child: TextFormField(
                              decoration: InputDecoration(
                                isDense: true,
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
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015),
                        Form(
                          // key: formController.postalcodekey,
                          child: TextFormField(
                              decoration: InputDecoration(
                                isDense: true,
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
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015),
                        Form(
                          // key: formController.sellingcodekey,
                          child: Obx(
                            () => Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.grey)),
                              child: DropdownButton(
                                isDense: true,
                                hint: Row(children: [
                                  Icon(Icons.sell_rounded, color: Colors.grey),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Selling",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ]),
                                padding: EdgeInsets.all(10),
                                isExpanded: true,
                                underline: SizedBox(),
                                value: formController.selectedSeling.value == ""
                                    ? null
                                    : formController.selectedSeling.value,
                                onChanged: (newValue) {
                                  formController
                                      .upDateSellingItem(newValue.toString());
                                },
                                items: [
                                  'Male',
                                  'Female'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015),
                        Form(
                          // key: formkey,
                          child: TextFormField(
                            decoration: InputDecoration(
                              isDense: true,
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
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015),
                        Form(
                          // key: formkey,
                          child: TextFormField(
                            obscureText: formController.passwordSecured,
                            decoration: InputDecoration(
                              isDense: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: "Password",
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  // Obx(() =>  formController.passwordSecured.)
                                },
                                icon: Icon(Icons.visibility_off),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                            controller: formController.passwordController,
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015),
                        Form(
                          // key: formkey,
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              isDense: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: "Confirm password",
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  // Obx(() =>  formController.passwordSecured.)
                                },
                                icon: Icon(Icons.visibility_off),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                            controller:
                                formController.confirmpasswordController,
                          ),
                        ),
                      ],
                    ),
                  ),
                ))));
  }

  serviceForm(context) {
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
                      children: [
                        Form(
                          // key: formController.fullnamekey,
                          child: TextFormField(
                              decoration: InputDecoration(
                                isDense: true,
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
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015),
                        Obx(
                          () => Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey)),
                            child: DropdownButton<String>(
                              isDense: true,
                              hint: Row(children: [
                                Icon(Icons.person_2, color: Colors.grey),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Gender",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ]),
                              padding: EdgeInsets.all(10),
                              isExpanded: true,
                              underline: SizedBox(),
                              value: formController.selectedItem.value == ""
                                  ? null
                                  : formController.selectedItem.value,
                              onChanged: (newValue) {
                                formController
                                    .updateGender(newValue.toString());
                              },
                              items: [
                                'Male',
                                'Female'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015),
                        Form(
                          // key: formController.countrykey,
                          child: TextFormField(
                              decoration: InputDecoration(
                                isDense: true,
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
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015),
                        Form(
                          // key: formController.regionkey,
                          child: TextFormField(
                              decoration: InputDecoration(
                                isDense: true,
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
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015),
                        Form(
                          // key: formController.postalcodekey,
                          child: TextFormField(
                              decoration: InputDecoration(
                                isDense: true,
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
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015),
                        Form(
                          // key: formController.sellingcodekey,
                          child: Obx(
                            () => Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.grey)),
                              child: DropdownButton(
                                isDense: true,
                                hint: Row(children: [
                                  Icon(Icons.sell_rounded, color: Colors.grey),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Selling",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ]),
                                padding: EdgeInsets.all(10),
                                isExpanded: true,
                                underline: SizedBox(),
                                value: formController.selectedSeling.value == ""
                                    ? null
                                    : formController.selectedSeling.value,
                                onChanged: (newValue) {
                                  formController
                                      .upDateSellingItem(newValue.toString());
                                },
                                items: [
                                  'Male',
                                  'Female'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015),
                        Form(
                          // key: formkey,
                          child: TextFormField(
                            decoration: InputDecoration(
                              isDense: true,
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
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015),
                        Form(
                          // key: formkey,
                          child: TextFormField(
                            obscureText: formController.passwordSecured,
                            decoration: InputDecoration(
                              isDense: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: "Password",
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  // Obx(() =>  formController.passwordSecured.)
                                },
                                icon: Icon(Icons.visibility_off),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                            controller: formController.passwordController,
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015),
                        Form(
                          // key: formkey,
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              isDense: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: "Confirm password",
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  // Obx(() =>  formController.passwordSecured.)
                                },
                                icon: Icon(Icons.visibility_off),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                            controller:
                                formController.confirmpasswordController,
                          ),
                        ),
                      ],
                    ),
                  ),
                ))));
  }

  buyerForm(context) {
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
                    //key: formController.fullnamekey,
                    child: TextFormField(
                        decoration: InputDecoration(
                          isDense: true,
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
                  Obx(
                    () => Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey)),
                      child: DropdownButton<String>(
                        isDense: true,
                        hint: Row(children: [
                          Icon(Icons.person_2, color: Colors.grey),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Gender",
                            style: TextStyle(color: Colors.grey),
                          )
                        ]),
                        padding: EdgeInsets.all(10),
                        isExpanded: true,
                        underline: SizedBox(),
                        value: formController.selectedItem.value == ""
                            ? null
                            : formController.selectedItem.value,
                        onChanged: (newValue) {
                          formController.updateGender(newValue.toString());
                        },
                        items: ['Male', 'Female']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  Form(
                    //  key: formController.countrykey,
                    child: TextFormField(
                        decoration: InputDecoration(
                          isDense: true,
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
                    // key: formController.regionkey,
                    child: TextFormField(
                        decoration: InputDecoration(
                          isDense: true,
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
                    // key: formController.postalcodekey,
                    child: TextFormField(
                        decoration: InputDecoration(
                          isDense: true,
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
                    child: Obx(
                      () => Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey)),
                        child: DropdownButton(
                          isDense: true,
                          hint: Row(children: [
                            Icon(Icons.sell_rounded, color: Colors.grey),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Selling",
                              style: TextStyle(color: Colors.grey),
                            )
                          ]),
                          padding: EdgeInsets.all(10),
                          isExpanded: true,
                          underline: SizedBox(),
                          value: formController.selectedSeling.value == ""
                              ? null
                              : formController.selectedSeling.value,
                          onChanged: (newValue) {
                            formController
                                .upDateSellingItem(newValue.toString());
                          },
                          items: ['Male', 'Female']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  Form(
                    // key: formkey,
                    child: TextFormField(
                      decoration: InputDecoration(
                        isDense: true,
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
                      obscureText: formController.passwordSecured,
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          onPressed: () {
                            // Obx(() =>  formController.passwordSecured.)
                          },
                          icon: Icon(Icons.visibility_off),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      controller: formController.passwordController,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  Form(
                    // key: formkey,
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: "Confirm password",
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          onPressed: () {
                            // Obx(() =>  formController.passwordSecured.)
                          },
                          icon: Icon(Icons.visibility_off),
                        ),
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
