// To parse this JSON data, do
//
//     final book = bookFromJson(jsonString);

import 'dart:convert';

Book bookFromJson(String str) => Book.fromJson(json.decode(str));

class Book {
  String? kind;
  int? totalItems;
  List<Item>? items;

  Book({
    required this.kind,
    required this.totalItems,
    required this.items,
  });

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        kind: json["kind"] == null ? "kind" : json["kind"],
        totalItems: json["totalItems"] == null ? 0 : json["totalItems"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
      );
}

class Item {
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;

  Item({
    required this.id,
    required this.etag,
    required this.selfLink,
    required this.volumeInfo,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        etag: json["etag"],
        selfLink: json["selfLink"],
        volumeInfo: VolumeInfo.fromJson(json["volumeInfo"]),
      );
}

class VolumeInfo {
  String? title;
  List<String>? authors;
  String? description;
  double? averageRating;
  ImageLinks? imageLinks;
  String? infoLink;

  VolumeInfo({
    required this.title,
    required this.authors,
    required this.description,
    required this.averageRating,
    required this.imageLinks,
    required this.infoLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
        title: json["title"] == null ? "Title" : json['title'],
        authors: json["authors"] == null
            ? ["No author details available"]
            : List<String>.from(json["authors"].map((x) => x)),
        description:
            json["description"] == null ? "Description" : json["description"],
        averageRating: json["averageRating"] == null
            ? null
            : json["averageRating"].toDouble(),
        imageLinks: json["imageLinks"] == null
            ? null
            : ImageLinks.fromJson(json["imageLinks"]),
        infoLink: json["infoLink"] == null ? "link" : json["infoLink"],
      );
}

class ImageLinks {
  String? smallThumbnail;
  String? thumbnail;

  ImageLinks({
    required this.smallThumbnail,
    required this.thumbnail,
  });

  factory ImageLinks.fromJson(Map<String, dynamic> json) => ImageLinks(
        smallThumbnail:
            json["smallThumbnail"] == null ? null : json["smallThumbnail"],
        thumbnail: json["thumbnail"] == null ? null : json["thumbnail"],
      );
}
