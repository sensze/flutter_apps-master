// To parse this JSON data, do
//
//     final responsePost = responsePostFromJson(jsonString);

import 'dart:convert';

ResponsePost responsePostFromJson(String str) => ResponsePost.fromJson(json.decode(str));

String responsePostToJson(ResponsePost data) => json.encode(data.toJson());

class ResponsePost {
  ResponsePost({
    required this.sukses,
    required this.pesan,
    required this.lastId,
  });

  bool sukses;
  String pesan;
  int lastId;

  factory ResponsePost.fromJson(Map<String, dynamic> json) => ResponsePost(
    sukses: json["sukses"],
    pesan: json["pesan"],
    lastId: json["last_id"],
  );

  Map<String, dynamic> toJson() => {
    "sukses": sukses,
    "pesan": pesan,
    "last_id": lastId,
  };
}
