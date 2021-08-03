import 'dart:convert';

class User {
  final String id;
  final String firstName;
  final String lastName;
  final String address;
  final String mobileNo;
  final String email;
  final int age;
  final String gender;

  User(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.address,
      required this.mobileNo,
      required this.email,
      required this.age,
      required this.gender});

}
