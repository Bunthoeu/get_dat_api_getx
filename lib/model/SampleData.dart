// To parse this JSON data, do
//
//     final sampleData = sampleDataFromJson(jsonString);

import 'dart:convert';

List<SampleData> sampleDataFromJson(String str) => List<SampleData>.from(json.decode(str).map((x) => SampleData.fromJson(x)));

String sampleDataToJson(List<SampleData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SampleData {
  SampleData({
    required this.albumId,
     required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  factory SampleData.fromJson(Map<String, dynamic> json) => SampleData(
    albumId: json["albumId"] == null ? null : json["albumId"],
    id: json["id"] == null ? null : json["id"],
    title: json["title"] == null ? null : json["title"],
    url: json["url"] == null ? null : json["url"],
    thumbnailUrl: json["thumbnailUrl"] == null ? null : json["thumbnailUrl"],
  );

  Map<String, dynamic> toJson() => {
    "albumId": albumId == '' ? null : albumId,
    "id": id == '' ? null : id,
    "title": title == '' ? null : title,
    "url": url == '' ? null : url,
    "thumbnailUrl": thumbnailUrl == '' ? null : thumbnailUrl,
  };
}
