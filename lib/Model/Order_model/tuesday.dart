// import 'dart:convert';

// import 'package:flutter/material.dart';

// class Tuesday {
//   String image;
//   String name;
//   String price;

//   Tuesday({
//     @required this.image,
//     @required this.name,
//     @required this.price,
//   });

//   factory Tuesday.fromJson(Map<String, dynamic> json) {
//     return Tuesday(
//         image: json["image"], name: json['name'], price: json['price']);
//   }
// }

// class TuesdayOrder {
//   List<Tuesday> tuesday;
//   TuesdayOrder({
//     @required this.tuesday,
//   });

//   factory TuesdayOrder.fromJson(List<dynamic> json) {
//     List<Tuesday> tuesday = <Tuesday>[];
//     tuesday = json.map((e) => Tuesday.fromJson(e)).toList();
//     return TuesdayOrder(tuesday: tuesday);
//   }
// }

// class TuesdayMenu {
//   static Future<List<TuesdayOrder>> tuesdayUserMenu(
//       BuildContext context) async {
//     final assetBundle = DefaultAssetBundle.of(context);
//     final data = await assetBundle.loadString("assets/tuesday.json");
//     final body = json.decode(data);
//     print(body.toString());

//     return body;

//     //  return body.map<TuesdayOrder>(TuesdayOrder.fromJson).toList();
//     //return body.map<MenuList>(MenuList.fromJson).toList();
//   }
// }
