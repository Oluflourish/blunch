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

import 'package:blunch/View/Pages/Location/Select_Location.dart';
import 'package:flutter/material.dart';

class LocationResponse {
  final String status;
  List<Location> location;

  LocationResponse({this.location, this.status});

  factory LocationResponse.fromJson(Map<String, dynamic> json) {
    var list = json['locations'] as List;
    List<Location> locationList =
        list.map((e) => Location.fromJson(e)).toList();
    return LocationResponse(location: locationList, status: json['status']);
  }
}

class Location {
  int id;
  String name;
  Location({
    @required this.id,
    @required this.name,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(id: json['id'], name: json['name']);
  }
}
