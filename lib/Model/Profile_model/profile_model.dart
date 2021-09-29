import 'package:flutter/material.dart';

class ProfileMode {
  final String first_name;
  final String last_name;
  final String display_name;
  final String email;
  final String phone;
  final String address;
  ProfileMode({
    @required this.first_name,
    @required this.last_name,
    @required this.display_name,
    @required this.email,
    @required this.phone,
    @required this.address,
  });

  Map toJson() => {
        "first_name": first_name,
        "last_name": last_name,
        "email": email,
        "phone": phone,
        "address": address,
        "display_name": display_name
      };

  ProfileMode.fromJson(Map json)
      : display_name = json["display_name"],
        first_name = json["first_name"],
        last_name = json['last_name'],
        email = json['email'],
        phone = json['phone'],
        address = json['address'];
}
