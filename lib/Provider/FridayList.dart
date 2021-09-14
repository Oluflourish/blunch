import 'package:blunch/models/item.dart';
import 'package:flutter/material.dart';

class DayFive extends ChangeNotifier {
  List<ProductItems> _items = [];
  List<ProductItems> _cart = [];
  int counter = 1;

  ProductItems _activeitem = null;

  DayFive() {
    _items = [
      ProductItems(
          id: 1,
          image: ("assets/wafffles.jpg"),
          name: "4 Chicken Waffles + 2 Sausages + Syrup",
          quantity: 1,
          price: 1100),
      ProductItems(
          id: 2,
          image: ("assets/waffles_plain.png"),
          name: "4 Plain Waffles + 2 Sausages + Syrup",
          quantity: 1,
          price: 900),
      ProductItems(
          id: 3,
          image: ("assets/suya_stirfry.png"),
          name: "Suya Stir Fry Noodles",
          quantity: 1,
          price: 1200),
      ProductItems(
          id: 4,
          image: ("assets/suya_stirfryy.png"),
          name: "Suya Stir Fry Noodles + Extra Suya",
          quantity: 1,
          price: 1200),
      ProductItems(
          id: 5,
          image: ("assets/zobo.png"),
          name: "Zobo",
          quantity: 1,
          price: 200),
    ];
    notifyListeners();
  }

  List<ProductItems> get dayfiveitem => _items;
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
