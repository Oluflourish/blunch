import 'package:blunch/models/item.dart';
import 'package:flutter/material.dart';

class DayThree extends ChangeNotifier {
  List<ProductItems> _items = [];
  List<ProductItems> _cart = [];
  int counter = 1;

  ProductItems _activeitem = null;

  DayThree() {
    _items = [
      ProductItems(
          id: 1,
          image: ("assets/suya_stirfry.png"),
          name: "Suya Stir Fry Noodles",
          quantity: 1,
          price: 1000),
      ProductItems(
          id: 2,
          image: ("assets/chicken_sandwich.png"),
          name: "Chicken Sandwich",
          quantity: 1,
          price: 1000),
      ProductItems(
          id: 3,
          image: ("assets/suya_stirfryy.png"),
          name: "Suya Stir Fry Noodles + Extra Suya",
          quantity: 1,
          price: 1200),
      ProductItems(
          id: 4,
          image: ("assets/zobo.png"),
          name: "Zobo",
          quantity: 1,
          price: 200),
    ];
    notifyListeners();
  }

  List<ProductItems> get daythreeitem => _items;
  List<ProductItems> get cart => _cart;
  ProductItems get activeitem => _activeitem;

  setActiveItem(ProductItems productItems) {
    _activeitem = productItems;
  }

  addItemToCart(ProductItems productItems) {
    ProductItems found = _items.firstWhere(
        (element) => element.id == productItems.id,
        orElse: () => null);
    if (found != null) {
      found.quantity += 1;
    } else {
      _items.add(productItems);
      productItems.quantity += 1;
    }
    notifyListeners();
  }

  removeItemFromCart(ProductItems productItems) {
    ProductItems found = _items.firstWhere(
        (element) => element.id == productItems.id,
        orElse: () => null);
    if (found != null && found.quantity == 1) {
      productItems.quantity = 0;
      _items.remove(productItems);
    }
    if (found != null && found.quantity > 1) {
      found.quantity -= 1;
    }
    notifyListeners();
  }
}
