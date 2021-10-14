import 'package:blunch/models/item.dart';
import 'package:flutter/material.dart';

//seperate the model
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

class CartProvider extends ChangeNotifier {
  ProductItems _activeitem = null;
  int counter = 1;
  ProductItems get activeItem => _activeitem;

  setActiveItem(ProductItems productItems) {
    _activeitem = productItems;
  }

  Map<int, CartItems> _cartItems = {};

  Map<int, CartItems> get items {
    return {..._cartItems};
  }

  int get itemsCount {
    return _cartItems.values.length;
  }

  //total price
  int get mealSum {
    var counter = 1;
    counter = activeItem.quantity * counter;

    return counter;
  }

  // String get meall {
  //   String meal = '';
  //   if (_cartItems.containsKey(counter) && _cartItems.isNotEmpty) {
  //     meal = 'Meals';
  //   } else {
  //     meal = "Meals";
  //   }
  //   return meal;
  // }

  int itemcartPrice(int price) {
    return _cartItems[price].price;
  }

  int quantity(int id) {
    return _cartItems[id].quantity;
  }

  //Show Product cart
  bool get showCart {
    var value = false;
    if (_cartItems.isEmpty) {
      value = false;
    } else {
      value = true;
    }
    return value;
  }

  //get total price
  int get totalAmount {
    var total = 0;
    _cartItems.forEach((key, CartItems) {
      total += CartItems.price * CartItems.quantity;
    });
    return total;
  }

//Meals or Meal
  String get meals {
    var meals = '';
    var cart = items.length.toInt();
    if (cart == 1) {
      meals = 'meal';
    } else {
      meals = 'meals';
    }
    return meals;
  }

  //Delete Product
  void removeItem(String productId) {
    _cartItems.remove(productId);
    notifyListeners();
  }

  //add cart
  void addItems(
    int quantity,
    int id,
    String name,
    int price,
    String image,
  ) {
    if (_cartItems.containsKey(id)) {
      _cartItems.update(
          id,
          (value) => CartItems(
              name: value.name,
              price: value.price,
              quantity: quantity,
              image: value.image));
    } else {
      _cartItems.putIfAbsent(
          id,
          () => CartItems(
              id: id,
              name: name,
              price: price,
              quantity: quantity,
              image: image));
    }
    notifyListeners();
  }

  //int counter = 1;
}
