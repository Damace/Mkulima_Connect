// To parse this JSON data, do
//
//     final items = itemsFromJson(jsonString);

import 'dart:convert';

List<Items> itemsFromJson(String str) => List<Items>.from(json.decode(str).map((x) => Items.fromJson(x)));

String itemsToJson(List<Items> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Items {
    String categoryid;
    String name;
    String image;
    String price;

    Items({
        required this.categoryid,
        required this.name,
        required this.image,
        required this.price,
    });

    factory Items.fromJson(Map<String, dynamic> json) => Items(
        categoryid: json["categoryid"],
        name: json["name"],
        image: json["image"],
        price: json["price"],
    );

    Map<String, dynamic> toJson() => {
        "categoryid": categoryid,
        "name": name,
        "image": image,
        "price": price,
    };
}
