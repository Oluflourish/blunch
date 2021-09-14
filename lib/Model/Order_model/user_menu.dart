// import 'dart:convert';

// import 'package:flutter/material.dart';

// class MenuList {
//   final String name;
//   final String image;
//   final int price;
//   MenuList({
//     @required this.name,
//     @required this.image,
//     @required this.price,
//   });

//   static MenuList fromJson(json) =>
//       MenuList(name: json["name"], image: json["image"], price: json["price"]);
// }

// class MenuApi {
//   static Future<List<MenuList>> getUserMenu(BuildContext context) async {
//     final assetBundle = DefaultAssetBundle.of(context);
//     final data = await assetBundle.loadString("json/tuesday.json");
//     final body = json.decode(data);
//     print(body.toString());
//     return body.map<MenuList>(MenuList.fromJson(json)).toList();
//   }
// }

// // class MenuTuesday {
// //   static Future<List<MenuList>> getUserMenu(BuildContext context) async {
// //     final assetBundle = DefaultAssetBundle.of(context);
// //     final data = await assetBundle.loadString("assets/tuesday.json");
// //     final body = json.decode(data);
// //     print(body.toString());
// //     return body.map<MenuList>(MenuList.fromJson(json)).toList();
// //   }
// // }

// // class MenuWednesday {
// //   static Future<List<MenuList>> getUserMenu(BuildContext context) async {
// //     final assetBundle = DefaultAssetBundle.of(context);
// //     final data = await assetBundle.loadString("assets/tuesday.json");
// //     final body = json.decode(data);
// //     print(body.toString());
// //     return body.map<MenuList>(MenuList.fromJson(json)).toList();
// //   }
// // }

// // class MenuThursday {
// //   static Future<List<MenuList>> getUserMenu(BuildContext context) async {
// //     final assetBundle = DefaultAssetBundle.of(context);
// //     final data = await assetBundle.loadString("assets/tuesday.json");
// //     final body = json.decode(data);
// //     print(body.toString());
// //     return body.map<MenuList>(MenuList.fromJson(json)).toList();
// //   }
// // }

// // class MenuFriday {
// //   static Future<List<MenuList>> getUserMenu(BuildContext context) async {
// //     final assetBundle = DefaultAssetBundle.of(context);
// //     final data = await assetBundle.loadString("assets/tuesday.json");
// //     final body = json.decode(data);
// //     print(body.toString());
// //     return body.map<MenuList>(MenuList.fromJson(json)).toList();
// //   }
// // }
