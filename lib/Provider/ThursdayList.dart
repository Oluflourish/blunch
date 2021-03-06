import 'package:blunch/models/item.dart';
import 'package:flutter/material.dart';

class DayFour extends ChangeNotifier {
  List<ProductItems> _items = [];
  List<ProductItems> _cart = [];
  int counter = 1;

  ProductItems _activeitem = null;

  DayFour() {
    _items = [
      ProductItems(
          id: 14,
          image: ("assets/chicken_stirfry.png"),
          name: "Chicken Stir Fry Noodles",
          quantity: 1,
          price: 1500),
      ProductItems(
          id: 15,
          image: ("assets/pancake.png"),
          name: "6 Pancakes + 2 Sausages + Syrup",
          quantity: 1,
          price: 1000),
      ProductItems(
          id: 16,
          image: ("assets/suya_stirfryy.png"),
          name: "Suya Stir Fry Noodles + Extra Suya",
          quantity: 1,
          price: 1200),
      ProductItems(
          id: 17,
          image: ("assets/zobo.png"),
          name: "Zobo",
          quantity: 1,
          price: 200),
    ];
    notifyListeners();
  }

  List<ProductItems> get dayfouritem => _items;
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
