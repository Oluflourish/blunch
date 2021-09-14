// import 'dart:convert';

// import 'package:flutter/material.dart';

// class Wednesday {
//   String image;
//   String name;
//   String price;

//   Wednesday({
//     @required this.image,
//     @required this.name,
//     @required this.price,
//   });

//   factory Wednesday.fromJson(Map<String, dynamic> json) {
//     return Wednesday(
//         image: json["image"], name: json['name'], price: json['price']);
//   }
// }

// class WednesdayOrder {
//   List<Wednesday> tuesday;
//   WednesdayOrder({
//     @required this.tuesday,
//   });

//   factory WednesdayOrder.fromJson(List<dynamic> json) {
//     List<Wednesday> tuesday = <Wednesday>[];
//     tuesday = json.map((e) => Wednesday.fromJson(e)).toList();
//     return WednesdayOrder(tuesday: tuesday);
//   }
// }

// class WednesdayMenu {
//   static Future<List<WednesdayOrder>> tuesdayUserMenu(
//       BuildContext context) async {
//     final assetBundle = DefaultAssetBundle.of(context);
//     final data = await assetBundle.loadString("assets/tuesday.json");
//     final body = json.decode(data);
//     print(body);

//     return body;
//   }
// }
