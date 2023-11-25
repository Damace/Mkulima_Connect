// To parse this JSON data, do
//
//     final category = categoryFromJson(jsonString);

import 'dart:convert';

List<Category> categoryFromJson(String str) => List<Category>.from(json.decode(str).map((x) => Category.fromJson(x)));

String categoryToJson(List<Category> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Category {
    String categoryid;
    String name;
    String image;

    Category({
        required this.categoryid,
        required this.name,
        required this.image,
    });

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        categoryid: json["categoryid"],
        name: json["name"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "categoryid": categoryid,
        "name": name,
        "image": image,
    };
}
