import 'dart:convert';

class AllNoticeModel {
  final List<NoticeData>? data;

  AllNoticeModel({
    this.data,
  });

  AllNoticeModel copyWith({
    List<NoticeData>? data,
  }) =>
      AllNoticeModel(
        data: data ?? this.data,
      );

  factory AllNoticeModel.fromJson(String str) => AllNoticeModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AllNoticeModel.fromMap(Map<String, dynamic> json) => AllNoticeModel(
        data: json["data"] == null
            ? []
            : List<NoticeData>.from(json["data"]!.map((x) => NoticeData.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class AddNoticeModel {
  final String? message;
  final NoticeData? notice;

  AddNoticeModel({
    this.message,
    this.notice,
  });

  AddNoticeModel copyWith({
    String? message,
    NoticeData? notice,
  }) =>
      AddNoticeModel(
        message: message ?? this.message,
        notice: notice ?? this.notice,
      );

  factory AddNoticeModel.fromJson(String str) => AddNoticeModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AddNoticeModel.fromMap(Map<String, dynamic> json) => AddNoticeModel(
        message: json["message"],
        notice: json["notice"] == null ? null : NoticeData.fromMap(json["notice"]),
      );

  Map<String, dynamic> toMap() => {
        "message": message,
        "notice": notice?.toMap(),
      };
}

class NoticeData {
  final String? id;
  final String? date;
  final String? title;
  final String? downloadUrl;
  final int? v;

  NoticeData({
    this.id,
    this.date,
    this.title,
    this.downloadUrl,
    this.v,
  });

  NoticeData copyWith({
    String? id,
    String? date,
    String? title,
    String? downloadUrl,
    int? v,
  }) =>
      NoticeData(
        id: id ?? this.id,
        date: date ?? this.date,
        title: title ?? this.title,
        downloadUrl: downloadUrl ?? this.downloadUrl,
        v: v ?? this.v,
      );

  factory NoticeData.fromJson(String str) => NoticeData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory NoticeData.fromMap(Map<String, dynamic> json) => NoticeData(
        id: json["_id"],
        date: json["date"],
        title: json["title"],
        downloadUrl: json["downloadUrl"],
        v: json["__v"],
      );

  Map<String, dynamic> toMap() => {
        "_id": id,
        "date": date,
        "title": title,
        "downloadUrl": downloadUrl,
        "__v": v,
      };
}
