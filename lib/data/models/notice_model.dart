import 'dart:convert';

class NoticeModel {
  final String date;
  final String noticeTitle;
  final String downloadURL;

  NoticeModel({
    required this.date,
    required this.noticeTitle,
    required this.downloadURL,
  });

  NoticeModel copyWith({
    String? date,
    String? noticeTitle,
    String? downloadURL,
  }) {
    return NoticeModel(
      date: date ?? this.date,
      noticeTitle: noticeTitle ?? this.noticeTitle,
      downloadURL: downloadURL ?? this.downloadURL,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'noticeTitle': noticeTitle,
      'downloadURL': downloadURL,
    };
  }

  factory NoticeModel.fromMap(Map<String, dynamic> map) {
    return NoticeModel(
      date: map['date'] ?? '',
      noticeTitle: map['noticeTitle'] ?? '',
      downloadURL: map['downloadURL'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory NoticeModel.fromJson(String source) => NoticeModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'NoticeModel(date: $date, noticeTitle: $noticeTitle, downloadURL: $downloadURL)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NoticeModel &&
        other.date == date &&
        other.noticeTitle == noticeTitle &&
        other.downloadURL == downloadURL;
  }

  @override
  int get hashCode => date.hashCode ^ noticeTitle.hashCode ^ downloadURL.hashCode;
}
