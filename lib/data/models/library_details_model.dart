import 'dart:convert';

class LibraryDetailsModel {
  final List<AllLibraryDetails>? data;

  LibraryDetailsModel({
    this.data,
  });

  LibraryDetailsModel copyWith({
    List<AllLibraryDetails>? data,
  }) =>
      LibraryDetailsModel(
        data: data ?? this.data,
      );

  factory LibraryDetailsModel.fromJson(String str) =>
      LibraryDetailsModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LibraryDetailsModel.fromMap(Map<String, dynamic> json) =>
      LibraryDetailsModel(
        data: json["data"] == null
            ? []
            : List<AllLibraryDetails>.from(json["data"]!.map((x) => AllLibraryDetails.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class AllLibraryDetails {
  final String? id;
  final String? bookName;
  final String? bookNo;
  final String? serialNo;
  final String? author;
  final String? edition;
  final String? publication;
  final int? v;

  AllLibraryDetails.LibraryDetails({
    this.id,
    this.bookName,
    this.bookNo,
    this.serialNo,
    this.author,
    this.edition,
    this.publication,
    this.v,
  });

  AllLibraryDetails copyWith({
    String? id,
    String? bookName,
    String? bookNo,
    String? serialNo,
    String? author,
    String? edition,
    String? publication,
    int? v,
  }) =>
      AllLibraryDetails.LibraryDetails(
        id: id ?? this.id,
        bookName: bookName ?? this.bookName,
        bookNo: bookNo ?? this.bookNo,
        serialNo: serialNo ?? this.serialNo,
        author: author ?? this.author,
        edition: edition ?? this.edition,
        publication: publication ?? this.publication,
        v: v ?? this.v,
      );

  factory AllLibraryDetails.fromJson(String str) => AllLibraryDetails.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AllLibraryDetails.fromMap(Map<String, dynamic> json) => AllLibraryDetails.LibraryDetails(
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


class AddLibraryDetailsModel {
    final List<AddLibraryDetails>? data;

    AddLibraryDetailsModel({
        this.data,
    });

    AddLibraryDetailsModel copyWith({
        List<AddLibraryDetails>? data,
    }) => 
        AddLibraryDetailsModel(
            data: data ?? this.data,
        );

    factory AddLibraryDetailsModel.fromJson(String str) => AddLibraryDetailsModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory AddLibraryDetailsModel.fromMap(Map<String, dynamic> json) => AddLibraryDetailsModel(
        data: json["data"] == null ? [] : List<AddLibraryDetails>.from(json["data"]!.map((x) => AddLibraryDetails.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
    };
}

class AddLibraryDetails {
    final String? id;
    final String? bookName;
    final String? bookNo;
    final String? serialNo;
    final String? author;
    final String? edition;
    final String? publication;
    final int? v;

    AddLibraryDetails({
        this.id,
        this.bookName,
        this.bookNo,
        this.serialNo,
        this.author,
        this.edition,
        this.publication,
        this.v,
    });

    AddLibraryDetails copyWith({
        String? id,
        String? bookName,
        String? bookNo,
        String? serialNo,
        String? author,
        String? edition,
        String? publication,
        int? v,
    }) => 
        AddLibraryDetails(
            id: id ?? this.id,
            bookName: bookName ?? this.bookName,
            bookNo: bookNo ?? this.bookNo,
            serialNo: serialNo ?? this.serialNo,
            author: author ?? this.author,
            edition: edition ?? this.edition,
            publication: publication ?? this.publication,
            v: v ?? this.v,
        );

    factory AddLibraryDetails.fromJson(String str) => AddLibraryDetails.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory AddLibraryDetails.fromMap(Map<String, dynamic> json) => AddLibraryDetails(
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
