import 'package:flutter/services.dart';

import '../featured_estates_screen/widgets/gridshape_item_widget.dart';
import 'controller/featured_estates_controller.dart';
import 'models/gridshape_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mkulima_connect/widgets/app_bar/custom_app_bar.dart';
import 'package:mkulima_connect/widgets/custom_icon_button.dart';
import 'package:mkulima_connect/widgets/custom_search_view.dart';

class FeaturedEstatesScreen extends StatefulWidget {
  @override
  _FeaturedEstatesScreen createState() => _FeaturedEstatesScreen();
}

class _FeaturedEstatesScreen extends State<FeaturedEstatesScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: ColorConstant.default_color.withOpacity(0),
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ));
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.default_color,

              
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 74,
                leading: Container(),
                centerTitle: true,
               ),
           
            body: Column(
          children: [
            // TabBar with TabBarView wrapped in Expanded to allow for dynamic height
            Expanded(
              child: DefaultTabController(
                length: 3, // Number of tabs
                child: Column(
                  children: [
                    TabBar(
                      tabs: [
                        Tab(text: 'Tab 1'),
                        Tab(text: 'Tab 2'),
                        Tab(text: 'Tab 3'),
                      ],
                    ),
                    // Allow TabBarView to take remaining space in the Column
                    Expanded(
                      child: TabBarView(
                        children: [
                          // Contents of Tab 1
                          Container(
                            color: Colors.red,
                            child: Center(child: Text('Tab 1')),
                          ),
                          // Contents of Tab 2
                          Container(
                            color: Colors.green,
                            child: Center(child: Text('Tab 2')),
                          ),
                          // Contents of Tab 3
                          Container(
                            color: Colors.blue,
                            child: Center(child: Text('Tab 3')),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Other widgets can be added below the TabBarView
            // For example:
            // SomeWidget(),
          ],
        ),
            ));
  }

  Widget _tabSection(context) {
    return Padding(
      padding: getPadding(left: 24, top: 18, right: 25),
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(height: 50),
              child: TabBar(tabs: [
                Tab(text: "Home"),
                Tab(text: "Articles"),
                Tab(text: "User"),
              ]),
            ),
            Expanded(
              child: Container(
                child: TabBarView(children: [
                  Container(
                    child: Text("Home Body"),
                  ),
                  Container(
                    child: Text("Articles Body"),
                  ),
                  Container(
                    child: Text("User Body"),
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }

  onTapArrowleft14() {
    Get.back();
  }

  onTapBtnEdit() {
    Get.toNamed(
      AppRoutes.editProfileScreen,
    );
  }

  functionTransaction(context) {
    return Container(
      child: Center(
        child: Text("Empty"),
      ),
    );
  }

  functionRating(context) {
    return Container(
      child: Center(
        child: Text(
          "Empty",
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }

  functionHistory(context) {
    return Container(
      child: Center(
        child: Text(
          "Empty",
          style: TextStyle(color: Colors.green),
        ),
      ),
    );
  }
}


