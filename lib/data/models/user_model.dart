import 'dart:convert';

class User {
  final String name;
  final String rollNo;
  final String regdNo;
  final String dob;
  final String phoneNo;
  final String email;
  User({
    required this.name,
    required this.rollNo,
    required this.regdNo,
    required this.dob,
    required this.phoneNo,
    required this.email,
  });

  User copyWith({
    String? name,
    String? rollNo,
    String? regdNo,
    String? dob,
    String? phoneNo,
    String? email,
  }) {
    return User(
      name: name ?? this.name,
      rollNo: rollNo ?? this.rollNo,
      regdNo: regdNo ?? this.regdNo,
      dob: dob ?? this.dob,
      phoneNo: phoneNo ?? this.phoneNo,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'rollNo': rollNo,
      'regdNo': regdNo,
      'dob': dob,
      'phoneNo': phoneNo,
      'email': email,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'] ?? '',
      rollNo: map['rollNo'] ?? '',
      regdNo: map['regdNo'] ?? '',
      dob: map['dob'] ?? '',
      phoneNo: map['phoneNo'] ?? '',
      email: map['email'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(name: $name, rollNo: $rollNo, regdNo: $regdNo, dob: $dob, phoneNo: $phoneNo, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.name == name &&
        other.rollNo == rollNo &&
        other.regdNo == regdNo &&
        other.dob == dob &&
        other.phoneNo == phoneNo &&
        other.email == email;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        rollNo.hashCode ^
        regdNo.hashCode ^
        dob.hashCode ^
        phoneNo.hashCode ^
        email.hashCode;
  }
}
