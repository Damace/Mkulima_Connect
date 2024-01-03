// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

List<Products> productsFromJson(String str) =>
    List<Products>.from(json.decode(str).map((x) => Products.fromJson(x)));

String productsToJson(List<Products> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Products {
  String productid;
  String category;
  String imageOne;
  String imageTwo;
  String imageThree;
  String name;
  String price;
  String quantity;
  String details;
  String rate;
  String owner;
  String postedTime;
  String postedDate;

  Products({
    required this.productid,
    required this.category,
    required this.imageOne,
    required this.imageTwo,
    required this.imageThree,
    required this.name,
    required this.price,
    required this.quantity,
    required this.details,
    required this.rate,
    required this.owner,
    required this.postedTime,
    required this.postedDate,
  });

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        productid: json["productid"],
        category: json["category"],
        imageOne: json["image_one"],
        imageTwo: json["image_two"],
        imageThree: json["image_three"],
        name: json["name"],
        price: json["price"],
        quantity: json["quantity"],
        details: json["details"],
        rate: json["rate"],
        owner: json["owner"],
        postedTime: json["posted_time"],
        postedDate: json["posted_date"],
      );

  Map<String, dynamic> toJson() => {
        "productid": productid,
        "category": category,
        "image_one": imageOne,
        "image_two": imageTwo,
        "image_three": imageThree,
        "name": name,
        "price": price,
        "quantity": quantity,
        "details": details,
        "rate": rate,
        "owner": owner,
        "posted_time": postedTime,
        "posted_date": postedDate,
      };

  Map<String, Object?> toMap() {
    return {
      "productid": productid,
      "image_one": imageOne,
      "name": name,
      "price": price,
      "quantity": quantity,
    };
  }
}
