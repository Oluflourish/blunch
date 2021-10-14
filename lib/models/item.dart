import 'package:flutter/material.dart';

class ProductItems {
  int id;
  String name;
  int price;
  int quantity;
  String image;
  String day;

  ProductItems({
    this.id,
    @required this.name,
    @required this.price,
    @required this.quantity,
    @required this.image,
     this.day,
  });
}
