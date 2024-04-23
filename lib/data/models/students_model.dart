import 'dart:convert';

class StudentsModel {
  final String? message;
  final List<StudentsData>? data;

  StudentsModel({
    this.message,
    this.data,
  });

  StudentsModel copyWith({
    String? message,
    List<StudentsData>? data,
  }) =>
      StudentsModel(
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory StudentsModel.fromJson(String str) => StudentsModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory StudentsModel.fromMap(Map<String, dynamic> json) => StudentsModel(
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<StudentsData>.from(json["data"]!.map((x) => StudentsData.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class StudentsData {
  final String? id;
  final String? name;
  final String? email;
  final String? rollNo;
  final int? registrationNo;
  final int? phoneNo;
  final String? session;
  final String? branch;
  final String? dob;
  final dynamic profilePicture;
  final int? v;
  final String? password;

  StudentsData({
    this.id,
    this.name,
    this.email,
    this.rollNo,
    this.registrationNo,
    this.phoneNo,
    this.session,
    this.branch,
    this.dob,
    this.profilePicture,
    this.v,
    this.password,
  });

  StudentsData copyWith({
    String? id,
    String? name,
    String? email,
    String? rollNo,
    int? registrationNo,
    int? phoneNo,
    String? session,
    String? branch,
    String? dob,
    dynamic profilePicture,
    int? v,
    String? password,
  }) =>
      StudentsData(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        rollNo: rollNo ?? this.rollNo,
        registrationNo: registrationNo ?? this.registrationNo,
        phoneNo: phoneNo ?? this.phoneNo,
        session: session ?? this.session,
        branch: branch ?? this.branch,
        dob: dob ?? this.dob,
        profilePicture: profilePicture ?? this.profilePicture,
        v: v ?? this.v,
        password: password ?? this.password,
      );

  factory StudentsData.fromJson(String str) => StudentsData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory StudentsData.fromMap(Map<String, dynamic> json) => StudentsData(
        id: json["_id"],
        name: json["name"],
        email: json["email"],
        rollNo: json["rollNo"],
        registrationNo: json["registrationNo"],
        phoneNo: json["phoneNo"],
        session: json["session"],
        branch: json["branch"],
        dob: json["dob"],
        profilePicture: json["profilePicture"],
        v: json["__v"],
        password: json["password"],
      );

  Map<String, dynamic> toMap() => {
        "_id": id,
        "name": name,
        "email": email,
        "rollNo": rollNo,
        "registrationNo": registrationNo,
        "phoneNo": phoneNo,
        "session": session,
        "branch": branch,
        "dob": dob,
        "profilePicture": profilePicture,
        "__v": v,
        "password": password,
      };
}
