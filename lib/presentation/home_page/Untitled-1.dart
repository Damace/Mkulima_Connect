// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

List<Products> productsFromJson(String str) => List<Products>.from(json.decode(str).map((x) => Products.fromJson(x)));

String productsToJson(List<Products> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Products {
    String address;
    int age;
    String email;
    String firstname;
    String gender;
    int id;
    String lastname;
    String password;
    String phoneNumber;

    Products({
        required this.address,
        required this.age,
        required this.email,
        required this.firstname,
        required this.gender,
        required this.id,
        required this.lastname,
        required this.password,
        required this.phoneNumber,
    });

    factory Products.fromJson(Map<String, dynamic> json) => Products(
        address: json["address"],
        age: json["age"],
        email: json["email"],
        firstname: json["firstname"],
        gender: json["gender"],
        id: json["id"],
        lastname: json["lastname"],
        password: json["password"],
        phoneNumber: json["phone_number"],
    );

    Map<String, dynamic> toJson() => {
        "address": address,
        "age": age,
        "email": email,
        "firstname": firstname,
        "gender": gender,
        "id": id,
        "lastname": lastname,
        "password": password,
        "phone_number": phoneNumber,
    };
}
