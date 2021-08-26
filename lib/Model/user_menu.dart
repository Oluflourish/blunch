import 'dart:convert';

import 'package:flutter/material.dart';

class MenuList {
  final String name;
  final String image;
  final int price;

  MenuList(this.name, this.image, this.price);

  // static MenuList fromJson(Map<String, dynamic> json) =>
  //     MenuList(json['image'], json['name'], json['price']);

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'image': image,
      'price': price,
    };
  }

  factory MenuList.fromMap(Map<String, dynamic> map) {
    return MenuList(
      map['name'],
      map['image'],
      map['price'],
    );
  }

  String toJson() => json.encode(toMap());

  factory MenuList.fromJson(String source) =>
      MenuList.fromMap(json.decode(source));
}

class MenuApi {
  static Future<List<MenuList>> getUserMenu(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString("assets/foodcard.json");
    final body = json.decode(data);
    print(body);

    //return body.map<MenuList>(MenuList.fromJson).toList();
    //return body.map<MenuList>(MenuList.fromJson).toList();
  }
}
