import 'package:blunch/models/item.dart';
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

class CartProvider extends ChangeNotifier {
  Map<int, CartItems> _cartItems = {};
  // List<ProductItems> _items = [];
//  CartItems get activeitem => _activeitem;
  // CartItems _activeitem = null;

  // setActiveItem(CartItems cartItems) {
  //   _activeitem = cartItems;
  // }

  // List<ProductItems> get cart => _items;

  Map<int, CartItems> get items {
    return {..._cartItems};
  }

  int get itemsCount {
    return _cartItems.values.length;
  }

  //addItem(ProductItems productItems) {
  //   ProductItems found = _items.firstWhere(
  //       (element) => element.id == productItems.id,
  //       orElse: () => null);
  //   if (found != null) {
  //     found.quantity += 1;
  //   } else {
  //     productItems.quantity += 1;
  //   }
  //   notifyListeners();
  // }

  // int get totalOrder {
  //   var counter = 1;
  //   counter = activeitem.quantity * counter;
  //   return counter;
  // }

  // int get totalPriceAmount {
  //   var total = 0;
  //   _cartItems.forEach((key, activeItems) {
  //     total = activeitem.quantity

  //   });
  // }

  void getcarttotaltest(
      int id, int quantity, String name, int price, String image) {
    if (_cartItems.containsKey(id)) {
      _cartItems.update(
          id,
          (value) => CartItems(
              name: name, price: price, quantity: quantity++, image: image));
    } else {
      _cartItems.putIfAbsent(
          id,
          () => CartItems(
              id: id, name: name, price: price, quantity: 1, image: image));
    }
    notifyListeners();
  }

  // int get totalOrderP {
  // _cartItems.forEach((id, CartItems) {
  //   counter = CartItems.quantity + 1;
  //   return counter;
  // });
//  }

  // int get selectCartPrice {
  //   var price = activeitem.price * activeitem.quantity;
  //   return price;
  // }

  String get meall {
    String meal = '';
    if (_cartItems.containsKey(counter) && _cartItems.isNotEmpty) {
      meal = 'Meals';
    } else {
      meal = "Meals";
    }
    return meal;
  }

  // int getTot(CartItems cartItems) {
  //   int total = 0;
  //   for (CartItems p in cartItems) {
  //     total += (p.price * p.id);
  //   }
  //   return total;
  // }
  // int get cartpricet {
  //   return _cartItems;
  // }

  // int getTotal get {
  //   int total;
  //   total = activeitem.price * activeitem.quantity;

  // }

  int itemcartPrice(int price) {
    return _cartItems[price].price;
  }

  int quantity(int id) {
    return _cartItems[id].quantity;
  }

  bool get showCart {
    var value = false;
    if (_cartItems.isEmpty) {
      value = false;
    } else {
      value = true;
    }
    return value;
  }

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

  // void getpricetest(
  //     int id, String name, int price, String image, int quantity) {
  //   if (_cartItems.containsKey(id)) {
  //     _cartItems.update(
  //         id,
  //         (value) => CartItems(
  //             name: name, price: price, quantity: quantity, image: image));
  //   }
  // }

  void addItems(
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
              quantity: value.quantity + 1,
              image: value.image));
    } else {
      _cartItems.putIfAbsent(
          id,
          () => CartItems(
              id: id, name: name, price: price, quantity: 1, image: image));
    }
    notifyListeners();
  }

  int counter = 1;

  // getCartQuantity(CartItems productItems) {
  //   int p = 0;
  //   if (_activeitem.quantity == 1) {
  //     p = _activeitem.quantity;
  //   } else {
  //     p = _activeitem.quantity;
  //   }

  //   return p;
  // }
}
