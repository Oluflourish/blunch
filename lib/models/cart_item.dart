import 'package:flutter/material.dart';

class CartItems {
  int id;
  String name;
  int price;
  int quantity;
  String image;

  CartItems({
    this.id,
    @required this.name,
    @required this.price,
    @required this.quantity,
    @required this.image,
  });
}