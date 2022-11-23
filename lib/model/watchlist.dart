// To parse this JSON data, do
//
//     final WatchList = WatchListFromJson(jsonString);

import 'dart:convert';

List<WatchList> WatchListFromJson(String str) =>
    List<WatchList>.from(json.decode(str).map((x) => WatchList.fromJson(x)));

String WatchListToJson(List<WatchList> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class WatchList {
  WatchList({
    required this.watched,
    required this.title,
    required this.rating,
    required this.releaseDate,
    required this.review,
  });

  bool watched;
  String title;
  int rating;
  String releaseDate;
  String review;

  factory WatchList.fromJson(Map<String, dynamic> json) => WatchList(
        watched: json["fields"]["watched"],
        title: json["fields"]["title"],
        rating: json["fields"]["rating"],
        releaseDate: json["fields"]["release_date"],
        review: json["fields"]["review"],
      );

  Map<String, dynamic> toJson() => {
        "watched": watched,
        "title": title,
        "rating": rating,
        "release_date": releaseDate,
        "review": review,
      };
}
