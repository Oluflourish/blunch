import 'package:blunch/models/cart_item.dart';
import 'package:blunch/models/item.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  ProductItems _activeitem = null;
  int counter = 1;
  ProductItems get activeItem => _activeitem;

  setActiveItem(ProductItems productItems) {
    _activeitem = productItems;
  }

  List<CartItems> cartItems = [];
  List<int> cartItemIds = [];

  //total price
  int get mealSum {
    var counter = 1;
    counter = activeItem.quantity * counter;

    return counter;
  }

  // String get meall {
  //   String meal = '';
  //   if (cartItems.containsKey(counter) && cartItems.isNotEmpty) {
  //     meal = 'Meals';
  //   } else {
  //     meal = "Meals";
  //   }
  //   return meal;
  // }

  int itemcartPrice(int price) {
    return cartItems[price].price;
  }

  int quantity(int id) {
    return cartItems[id].quantity;
  }

  //Show Product cart
  bool get showCart {
    var value = false;
    if (cartItems.isEmpty) {
      value = false;
    } else {
      value = true;
    }
    return value;
  }

  //get total price
  int get totalAmount {
    var total = 0;

    cartItems.forEach((cartItem) {
      total += cartItem.price * cartItem.quantity;
    });

    return total;
  }

//Meals or Meal
  String get meals {
    var meals = '';
    var cart = cartItems.length;
    if (cart == 1) {
      meals = 'meal';
    } else {
      meals = 'meals';
    }
    return meals;
  }

  //Delete Product
  void removeItem(String productId) {
    cartItems.remove(productId);
    notifyListeners();
  }

  //add cart
  void addToCart(CartItems cartItem) {
    print(cartItem.id);
    if (cartItemIds.contains(cartItem.id)) {
      print("Case 1");
      int cartIndex = cartItemIds.indexOf(cartItem.id);
      print("Initial: "+cartItems[cartIndex].quantity.toString());
      cartItems[cartIndex] = cartItem;
      print("Final: "+cartItems[cartIndex].quantity.toString());

    } else {
      cartItems.add(cartItem);
      cartItemIds.add(cartItem.id);
      print(cartItems.toString());
      print(cartItemIds.toString());
    }
    notifyListeners();
  }

  //int counter = 1;
}
