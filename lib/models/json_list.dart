// import 'package:flutter/material.dart';

// class JsonOrder {
//   List<MenuDay> menuDay;

//   JsonOrder({
//     @required this.menuDay,
//   });

//   factory JsonOrder.fromJson(Map<String, dynamic> json) {
//     var list = json['MenuDay'] as List;
//     List<MenuDay> menuDayOrder =
//         list.map((menuDay) => MenuDay.fromJson(menuDay)).toList();
//     return JsonOrder(
//       menuDay: menuDayOrder,
//     );
//   }
// }

// class MenuDay {
//   String name;
//   int price;
//   String photo;

//   MenuDay({
//     @required this.name,
//     @required this.price,
//     @required this.photo,
//   });

//   factory MenuDay.fromJson(Map<String, dynamic> json) {
//     return MenuDay(
//         name: json['name'], price: json['price'], photo: json['photo']);
//   }
// }
