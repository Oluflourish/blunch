import 'package:flutter/material.dart';

class User_Profile {
  final String first_name;
  final String last_name;
  final String display_name;
  final String email;
  final String phone;
  final String address;

  User_Profile(
      {@required this.first_name,
      @required this.last_name,
      @required this.display_name,
      @required this.email,
      @required this.phone,
      @required this.address});

  User_Profile copy({
    String first_name,
    String display_name,
    String address,
    String email,
    String last_name,
    String phone,
  }) =>
      User_Profile(
        first_name: first_name ?? this.first_name,
        last_name: last_name ?? this.last_name,
        email: email ?? this.email,
        display_name: display_name ?? this.display_name,
        phone: phone ?? this.phone,
        address: address ?? this.address,
      );
  static User_Profile fromJson(Map<String, dynamic> json) => User_Profile(
      display_name: json["display_name"],
      first_name: json["first_name"],
      last_name: json['last_name'],
      email: json['email'],
      phone: json['phone'],
      address: json['address']);

  Map<String, dynamic> toJson() => {
        "first_name": first_name,
        "last_name": last_name,
        "email": email,
        "phone": phone,
        "address": address,
        "display_name": display_name
      };
}
