// To parse this JSON data, do
//
//     final tourismResult = tourismResultFromJson(jsonString);

import 'dart:convert';

TourismResult tourismResultFromJson(String str) => TourismResult.fromJson(json.decode(str));

String tourismResultToJson(TourismResult data) => json.encode(data.toJson());

class TourismResult {
  TourismResult({
    required this.status,
    required this.totalResults,
    required this.tourismPlaceList,
  });

  String status;
  int totalResults;
  List<TourismPlace> tourismPlaceList;

  factory TourismResult.fromJson(Map<String, dynamic> json) => TourismResult(
    status: json["status"],
    totalResults: json["totalResults"],
    tourismPlaceList: List<TourismPlace>.from(json["tourismPlaceList"].map((x) => TourismPlace.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "totalResults": totalResults,
    "tourismPlaceList": List<dynamic>.from(tourismPlaceList.map((x) => x.toJson())),
  };
}

class TourismPlace {
  TourismPlace({
    required this.id,
    required this.name,
    required this.location,
    required this.imageAssets,
    required this.day,
    required this.time,
    required this.price,
    required this.description,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.image4,
  });

  String id;
  String name;
  String location;
  String imageAssets;
  String day;
  String time;
  String price;
  String description;
  String image1;
  String image2;
  String image3;
  String image4;

  factory TourismPlace.fromJson(Map<String, dynamic> json) => TourismPlace(
    id: json["id"],
    name: json["name"],
    location: json["location"],
    imageAssets: json["imageAssets"],
    day: json["day"],
    time: json["time"],
    price: json["price"],
    description: json["description"],
    image1: json["image_1"],
    image2: json["image_2"],
    image3: json["image_3"],
    image4: json["image_4"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "location": location,
    "imageAssets": imageAssets,
    "day": day,
    "time": time,
    "price": price,
    "description": description,
    "image_1": image1,
    "image_2": image2,
    "image_3": image3,
    "image_4": image4,
  };
}
