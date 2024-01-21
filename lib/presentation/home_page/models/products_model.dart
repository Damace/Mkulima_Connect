// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

List<Products> productsFromJson(String str) =>
    List<Products>.from(json.decode(str).map((x) => Products.fromJson(x)));

String productsToJson(List<Products> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Products {
  int productid;
  int productId;
  String category;
  String imageUrl;
  String imageType;
  String name;
  int price;
  int quantity;
  String details;
  int rate;
  String owner;
  String postedTime;
  String postedDate;

  Products({
    required this.productid,
    required this.productId,
    required this.category,
    required this.imageUrl,
    required this.imageType,
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
        productId: json["product_id"],
        category: json["category"],
        imageUrl: json["image_url"],
        imageType: json["image_type"],
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
        "product_id": productId,
        "category": category,
        "image_url": imageUrl,
        "image_type": imageType,
        "name": name,
        "price": price,
        "quantity": quantity,
        "details": details,
        "rate": rate,
        "owner": owner,
        "posted_time": postedTime,
        "posted_date": postedDate,
      };
}
