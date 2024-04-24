import 'dart:convert';

class AllLibraryModel {
  final List<LibraryData>? data;

  AllLibraryModel({
    this.data,
  });

  AllLibraryModel copyWith({
    List<LibraryData>? data,
  }) =>
      AllLibraryModel(
        data: data ?? this.data,
      );

  factory AllLibraryModel.fromJson(String str) => AllLibraryModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AllLibraryModel.fromMap(Map<String, dynamic> json) => AllLibraryModel(
        data: json["data"] == null
            ? []
            : List<LibraryData>.from(json["data"]!.map((x) => LibraryData.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class LibraryData {
  final String? id;
  final String? bookName;
  final String? bookNo;
  final String? serialNo;
  final String? author;
  final String? edition;
  final String? publication;
  final int? v;

  LibraryData({
    this.id,
    this.bookName,
    this.bookNo,
    this.serialNo,
    this.author,
    this.edition,
    this.publication,
    this.v,
  });

  LibraryData copyWith({
    String? id,
    String? bookName,
    String? bookNo,
    String? serialNo,
    String? author,
    String? edition,
    String? publication,
    int? v,
  }) =>
      LibraryData(
        id: id ?? this.id,
        bookName: bookName ?? this.bookName,
        bookNo: bookNo ?? this.bookNo,
        serialNo: serialNo ?? this.serialNo,
        author: author ?? this.author,
        edition: edition ?? this.edition,
        publication: publication ?? this.publication,
        v: v ?? this.v,
      );

  factory LibraryData.fromJson(String str) => LibraryData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LibraryData.fromMap(Map<String, dynamic> json) => LibraryData(
        id: json["_id"],
        bookName: json["bookName"],
        bookNo: json["bookNo"],
        serialNo: json["serialNo"],
        author: json["author"],
        edition: json["edition"],
        publication: json["publication"],
        v: json["__v"],
      );

  Map<String, dynamic> toMap() => {
        "_id": id,
        "bookName": bookName,
        "bookNo": bookNo,
        "serialNo": serialNo,
        "author": author,
        "edition": edition,
        "publication": publication,
        "__v": v,
      };
}
