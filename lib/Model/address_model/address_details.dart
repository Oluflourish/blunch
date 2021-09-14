import 'package:flutter/material.dart';

class User_Address {
  final String first_name;
  final String last_name;
  final String info;
  final String phone;
  final String address;

  User_Address(
      {@required this.first_name,
      @required this.last_name,
      @required this.info,
      @required this.phone,
      @required this.address});

  User_Address copy({
    String first_name,
    String info,
    String address,
    String last_name,
    String phone,
  }) =>
      User_Address(
        first_name: first_name ?? this.first_name,
        last_name: last_name ?? this.last_name,
        info: info ?? this.info,
        phone: phone ?? this.phone,
        address: address ?? this.address,
      );
  static User_Address fromJson(Map<String, dynamic> json) => User_Address(
      info: json["info"],
      first_name: json["first_name"],
      last_name: json['last_name'],
      phone: json['phone'],
      address: json['address']);

  Map<String, dynamic> toJson() => {
        "first_name": first_name,
        "last_name": last_name,
        "phone": phone,
        "address": address,
        "display_name": info
      };
}
