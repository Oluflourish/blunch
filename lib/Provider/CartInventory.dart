import 'package:blunch/models/item.dart';
import 'package:flutter/material.dart';

class CartInventory extends ChangeNotifier {
  List<ProductItems> _items = [];
  List<ProductItems> _cart = [];

  int counter = 1;
  ProductItems _activeitem = null;

  CartInventory() {
    _items = [
      ProductItems(
          id: 0,
          image: "assets/egg_mayo.png",
          name: "Egg & Mayo Sandwich",
          quantity: 1,
          price: 1500),
      ProductItems(
          id: 1,
          image: ("assets/suya_stirfry.png"),
          name: "Suya Stir Fry Noodles",
          quantity: 1,
          price: 1000),
      ProductItems(
          id: 2,
          image: ("assets/suya_stirfryy.png"),
          name: "Suya Stir Fry Noodles + Extra Suya",
          quantity: 1,
          price: 1500),
      ProductItems(
          id: 3,
          image: ("assets/zobo.png"),
          name: "Zobo",
          quantity: 1,
          price: 200),
    ];
    notifyListeners();
  }

  List<ProductItems> get item => _items;

  List<ProductItems> get cart => _cart;

  ProductItems get activeitem => _activeitem;

  setActiveItem(ProductItems productItems) {
    _activeitem = productItems;
  }

  // addItemToCart(ProductItems productItems) {
  //   ProductItems found = _items.firstWhere(
  //       (element) => element.id == productItems.id,
  //       orElse: () => null);
  //   if (found != null) {
  //     found.quantity += 1;
  //   } else {
  //     _items.add(productItems);
  //     productItems.quantity += 1;
  //   }
  //   notifyListeners();
  // }

  addItem(ProductItems productItems) {
    ProductItems found = _items.firstWhere(
        (element) => element.id == productItems.id,
        orElse: () => null);
    if (found != null) {
      found.quantity += 1;
    } else {
      productItems.quantity += 1;
    }
    notifyListeners();
  }

  addQuantity(id) {
    item[id].quantity++;
    notifyListeners();
  }

  decreaseQuantity(id) {
    if (item[id].quantity > 1) item[id].quantity--;
    notifyListeners();
  }

  int get totalOrder {
    var counter = 1;
    counter = activeitem.quantity * counter;
    return counter;
  }

  removeItem(ProductItems productItems) {
    ProductItems found = _items.firstWhere(
        (element) => element.id == productItems.id,
        orElse: () => null);
    if (found != null && found.quantity == 1) {
      productItems.quantity = 1;
    }
    if (found != null && found.quantity > 1) {
      found.quantity -= 1;
    }
    notifyListeners();
  }

  void deleteItems(String productId) {
    _items.remove(productId);
    //_cartItems.remove(productId);
    notifyListeners();
  }

  int quantity(int id) {
    return cart[id].quantity;
  }

  //  int getCartQuantityTotal() {
  //   int total = 0;
  //   for (ProductItems p in _cart) {
  //     total += p.quantity;
  //   }
  //   return total;
  // }

  // removeItemFromCart(ProductItems productItems) {
  //   ProductItems found = _items.firstWhere(
  //       (element) => element.id == productItems.id,
  //       orElse: () => null);
  //   if (found != null && found.quantity == 1) {
  //     productItems.quantity = 1;
  //     _items.remove(productItems);
  //   }
  //   if (found != null && found.quantity > 1) {
  //     found.quantity -= 1;
  //   }
  //   notifyListeners();
  // }

  getCartPrice(ProductItems productItems) {
    // setActiveItem(productItems);
    int total = 0;
    total = _activeitem.quantity * _activeitem.price;

    return total;
  }

  int get selectCartPrice {
    var price = activeitem.price * activeitem.quantity;
    return price;
  }

  getCartQuantity(ProductItems productItems) {
    int p = 0;
    if (_activeitem.quantity == 1) {
      p = _activeitem.quantity;
    } else {
      p = _activeitem.quantity;
    }

    return p;
  }
}
