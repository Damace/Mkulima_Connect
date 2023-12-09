// To parse this JSON data, do
//
//     final items = itemsFromJson(jsonString);

import 'dart:convert';

List<Items> itemsFromJson(String str) => List<Items>.from(json.decode(str).map((x) => Items.fromJson(x)));

String itemsToJson(List<Items> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Items {
    int id;
    String name;
    String icon;

    Items({
        required this.id,
        required this.name,
        required this.icon,
    });

    factory Items.fromJson(Map<String, dynamic> json) => Items(
        id: json["id"],
        name: json["name"],
        icon: json["icon"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "icon": icon,
    };
}
