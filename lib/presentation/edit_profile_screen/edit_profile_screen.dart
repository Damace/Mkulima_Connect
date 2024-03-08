import 'package:flutter/services.dart';
import 'package:mkulima_connect/presentation/home_page/home_page.dart';

import 'controller/edit_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:form_field_validator/form_field_validator.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreen();
}

class _EditProfileScreen extends State<EditProfileScreen> {
  Map userData = {};
  final _formkey = GlobalKey<FormState>();
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
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: SingleChildScrollView(
        child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 5.0, right: 5.0),
                          child: TextFormField(
                            validator: MultiValidator([
                              RequiredValidator(
                                  errorText: 'Full name is required'),
                              MaxLengthValidator(20,
                                  errorText: 'Maxmum 20 characters required'),
                            ]),
                            decoration: InputDecoration(
                                labelText: 'Full name',
                                // prefixIcon: Icon(
                                //       Icons.person,
                                //       color: Colors.green,
                                //       size: 16,
                                //     ),
                                labelStyle: TextStyle(color: Colors.grey),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.green))),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 5.0, right: 5.0),
                          child: TextFormField(
                            validator: MultiValidator([
                              RequiredValidator(
                                  errorText: 'Address is required'),
                              MaxLengthValidator(20, errorText: ''),
                            ]),
                            decoration: InputDecoration(
                                labelText: 'Address',
                                // prefixIcon: Icon(
                                //       Icons.person,
                                //       color: Colors.green,
                                //       size: 16,
                                //     ),
                                labelStyle: TextStyle(color: Colors.grey),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.green))),
                          ),
                        ),
                      ),
                    ]),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.only(left: 5.0, right: 5.0),
                            child: Text("Select Gender"),
                          ),
                        ),
                        Expanded(
                          child: Obx(
                            () => DropdownButton<String>(
                              hint: Row(children: [
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Gender",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ]),
                              underline: SizedBox(),
                              value: formController.selectedItem.value == ""
                                  ? null
                                  : formController.selectedItem.value,
                              padding: EdgeInsets.all(10),
                              // isExpanded: true,
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
                        )
                      ]),
                ),
                Divider(),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 5.0, right: 5.0),
                          child: TextFormField(
                            readOnly: true,
                            validator: MultiValidator([
                              RequiredValidator(errorText: 'Phone number'),
                              MaxLengthValidator(20,
                                  errorText: 'Maxmum 18 characters required'),
                            ]),
                            decoration: InputDecoration(
                                labelText: 'Phone number',
                                hintText: '0762700405',
                                // prefixIcon: Icon(
                                //       Icons.person,
                                //       color: Colors.green,
                                //       size: 16,
                                //     ),
                                labelStyle: TextStyle(color: Colors.grey),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.green))),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 5.0, right: 5.0),
                          child: TextFormField(
                            validator: MultiValidator([
                              RequiredValidator(
                                  errorText: 'Nationality is required'),
                              MaxLengthValidator(20, errorText: ''),
                            ]),
                            decoration: InputDecoration(
                                labelText: 'Nationality',
                                // prefixIcon: Icon(
                                //       Icons.person,
                                //       color: Colors.green,
                                //       size: 16,
                                //     ),
                                labelStyle: TextStyle(color: Colors.grey),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.green))),
                          ),
                        ),
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 5.0, right: 5.0),
                          child: TextFormField(
                            keyboardType: TextInputType.number,

                            //readOnly: true,
                            validator: MultiValidator([
                              RequiredValidator(
                                  errorText: 'Postal Codes Required'),
                              MaxLengthValidator(10,
                                  errorText: 'Maxmum 10 characters required'),
                            ]),
                            decoration: InputDecoration(
                                labelText: 'Postal Code',

                                // prefixIcon: Icon(
                                //       Icons.person,
                                //       color: Colors.green,
                                //       size: 16,
                                //     ),
                                labelStyle: TextStyle(color: Colors.grey),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.green))),
                          ),
                        ),
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 5.0, right: 5.0),
                          child: TextFormField(
                            validator: MultiValidator([
                              RequiredValidator(
                                  errorText: 'Enter email address'),
                              EmailValidator(
                                  errorText: 'Please correct email filled'),
                            ]),
                            decoration: InputDecoration(
                                labelText: 'Email',

                                // prefixIcon: Icon(
                                //       Icons.person,
                                //       color: Colors.green,
                                //       size: 16,
                                //     ),
                                labelStyle: TextStyle(color: Colors.grey),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.green))),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 5.0, right: 5.0),
                          child: TextFormField(
                            validator: MultiValidator([
                              RequiredValidator(
                                  errorText: 'Password is required'),
                              MaxLengthValidator(20, errorText: ''),
                            ]),
                            decoration: InputDecoration(
                                labelText: 'Password',
                                // prefixIcon: Icon(
                                //       Icons.person,
                                //       color: Colors.green,
                                //       size: 16,
                                //     ),
                                labelStyle: TextStyle(color: Colors.grey),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.green))),
                          ),
                        ),
                      ),
                    ]),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.only(left: 5.0, right: 5.0),
                            child: Text("Selling interest"),
                          ),
                        ),
                        Expanded(
                          child: Obx(
                            () => DropdownButton<String>(
                              hint: Row(children: [
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ]),
                              underline: SizedBox(),
                              value: formController.selectedItem.value == ""
                                  ? null
                                  : formController.selectedItem.value,
                              padding: EdgeInsets.all(10),
                              // isExpanded: true,
                              onChanged: (newValue) {
                                formController
                                    .updateGender(newValue.toString());
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
                        )
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.only(left: 5.0, right: 5.0),
                            child: Text("Any descriptions ( Optional)"),
                          ),
                        ),
                      ]),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Card(
                        elevation: 0,
                        color: Color.fromARGB(255, 243, 241, 241),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            maxLines: 10,
                            keyboardType: TextInputType.text,

                            //readOnly: true,
                            validator: MultiValidator([
                              // RequiredValidator(errorText: 'Postal Codes Required'),
                              MaxLengthValidator(10,
                                  errorText: 'Maxmum 10 characters required'),
                            ]),
                            decoration: InputDecoration(
                                labelText: 'Any other description',

                                // prefixIcon: Icon(
                                //       Icons.person,
                                //       color: Colors.green,
                                //       size: 16,
                                //     ),
                                labelStyle: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 231, 233, 231)),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.green))),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 5.0, right: 5.0),
                          child: TextFormField(
                            validator: MultiValidator([
                              RequiredValidator(errorText: 'Attach documents'),
                              EmailValidator(
                                  errorText: 'Please correct email filled'),
                            ]),
                            decoration: InputDecoration(
                                labelText: 'Attach any documents ( Option)',

                                // prefixIcon: Icon(
                                //       Icons.person,
                                //       color: Colors.green,
                                //       size: 16,
                                //     ),
                                labelStyle: TextStyle(color: Colors.grey),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.green))),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 5.0, right: 5.0),
                          child: TextFormField(
                            validator: MultiValidator([
                              RequiredValidator(
                                  errorText: 'Password is required'),
                              MaxLengthValidator(20, errorText: ''),
                            ]),
                            decoration: InputDecoration(
                                labelText: 'Attach Profile Picture ( Optional)',
                                // prefixIcon: Icon(
                                //       Icons.person,
                                //       color: Colors.green,
                                //       size: 16,
                                //     ),
                                labelStyle: TextStyle(color: Colors.grey),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.green))),
                          ),
                        ),
                      ),
                    ]),
                SizedBox(height: 15),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                color: Colors.red,
                    child: ElevatedButton(
                    
                      child: Text(
                        'Confirm Submission',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          print('form submiitted');
                        }
                      },
                    ),

                    width: MediaQuery.of(context).size.width,

                    height: 50,
                  ),
                )),
           
              ],
            )),
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
