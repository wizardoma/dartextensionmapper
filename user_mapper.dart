import 'dart:convert';

import 'user.dart';

extension UserMapper on User {
  static User fromServer(Map<String, dynamic> map) {
    return new User(
      id: map['id'] as String,
      firstName: (map['name'] as String).split(" ")[0],
      lastName: (map['name'] as String).split(" ")[1],
      address: map['address'] as String,
      mobileNo: map['phoneNo'] as String,
      email: map['emailAddress'] as String,
      age: map['age'] as int,
      gender: map['sex'] as String,
    );
  }

  static User fromMap(Map<String, dynamic> map) {
    return new User(
      id: map['id'] as String,
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      address: map['address'] as String,
      mobileNo: map['mobileNo'] as String,
      email: map['email'] as String,
      age: map['age'] as int,
      gender: map['gender'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'id': this.id,
      'firstName': this.firstName,
      'lastName': this.lastName,
      'address': this.address,
      'mobileNo': this.mobileNo,
      'email': this.email,
      'age': this.age,
      'gender': this.gender,
    } as Map<String, dynamic>;
  }

  String toJson() => jsonEncode(toMap());

  User fromJson(String source) => fromMap(jsonDecode(source));
}
