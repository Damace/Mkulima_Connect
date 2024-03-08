// To parse this JSON data, do
//
//     final newsandEvents = newsandEventsFromJson(jsonString);

import 'dart:convert';

List<NewsandEvents> newsandEventsFromJson(String str) =>
    List<NewsandEvents>.from(
        json.decode(str).map((x) => NewsandEvents.fromJson(x)));

String newsandEventsToJson(List<NewsandEvents> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NewsandEvents {
  int id;
  String newsTitle;
  String newsContent;
  String newsLocation;
  String newsImage;
  String createdAt;
  String updatedAt;

  NewsandEvents({
    required this.id,
    required this.newsTitle,
    required this.newsContent,
    required this.newsLocation,
    required this.newsImage,
    required this.createdAt,
    required this.updatedAt,
  });

  factory NewsandEvents.fromJson(Map<String, dynamic> json) => NewsandEvents(
        id: json["id"],
        newsTitle: json["news_title"],
        newsContent: json["news_content"],
        newsLocation: json["news_location"],
        newsImage: json["news_image"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "news_title": newsTitle,
        "news_content": newsContent,
        "news_location": newsLocation,
        "news_image": newsImage,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
