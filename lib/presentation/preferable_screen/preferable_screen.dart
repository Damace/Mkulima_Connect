import 'package:flutter/services.dart';
import 'package:like_button/like_button.dart';

import '../preferable_screen/widgets/preferable_item_widget.dart';
import 'controller/preferable_controller.dart';
import 'models/preferable_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/widgets/custom_button.dart';
import 'package:mkulima_connect/widgets/custom_icon_button.dart';

class PreferableScreen extends StatefulWidget {
  @override
  _PreferableScreen createState() => _PreferableScreen();
}

class _PreferableScreen extends State<PreferableScreen> {
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: ColorConstant.default_color,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ));
    return DefaultTabController(
      length: 2,
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Sellers / Buyers",
            style: TextStyle(fontSize: 14),
          ),
          backgroundColor: ColorConstant.default_color,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.sell_rounded),
                text: "Sellers",
              ),
              Tab(
                icon: Icon(Icons.person_2_rounded),
                text: "Buyers",
              ),
            ],
          ),
        ),
        backgroundColor: ColorConstant.whiteA700,
        body: TabBarView(
          children: [
            sellerList(),
            Center(
              child: Text("Settings"),
            ),
          ],
        ),
      )),
    );
  }

  sellerList() {
    final titles = ["Alex Mwakalikamo", "Seller B", "Seller C"];
    final subtitles = [
      "Here is list 1 subtitle ffjdf dkffhkhkfhjkfjkhdjhfd fdkjfhdkjfhdjfddfd  eweqeqweqdewwrewrwerwerwer  djfkdfiudf",
      "Here is list 2 subtitle",
      "Here is list 3 subtitle"
    ];
    final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];
    return ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height *
                  0.15, // Set the height of the card container
              child: Card(
                  child: Column(
                children: [
                  ListTile(
                      onTap: () {},
                      title: Text(titles[index],style: TextStyle(fontSize: 14,fontWeight:FontWeight.bold),),
                      subtitle: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          subtitles[index],
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
                      trailing: Visibility(
                        // if visibility is true, the child
                        // widget will show otherwise hide
                        visible: true,
                        child: Icon(
                          Icons.verified_rounded,
                          color: Colors.green,
                        ),
                      )),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 35, right: 10,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        LikeButton(
                            likeBuilder: (bool isLiked) {
                              return Icon(
                                Icons.favorite,
                                color: isLiked ? Colors.red : Colors.grey,
                              );
                            },
                            likeCount: 0,
                            countBuilder:
                                (int? count, bool isLiked, String text) {
                              var color = isLiked ? Colors.red : Colors.grey;
                              Widget result;
                              if (count == 0) {
                                result = Text(
                                  'Like',
                                  style: TextStyle(color: Colors.red),
                                );
                              } else {
                                result = Text(
                                  text,
                                  style: TextStyle(color: color),
                                );
                                return result;
                              }
                            }),
                        SizedBox(width: 5),
                       Icon(Icons.share,color: Colors.grey,),
                        SizedBox(width: 5),
                        Text("")
                      ],
                    ),
                  )
                ],
              )),
            ),
          );
        });
  }

  onTapBtnArrowleft() {
    Get.back();
  }

  onTapSkip() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.preferableSelectedScreen,
    );
  }
}
