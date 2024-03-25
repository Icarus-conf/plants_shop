import 'package:flutter/material.dart';
import 'package:plants_shop/demo_data.dart';

class MyProvider extends ChangeNotifier {
  List<DemoData> plantsInCart = [];

  addToCart(DemoData plant) {
    plantsInCart.add(plant);

    notifyListeners();
  }

  removeFromCart(DemoData plant) {
    plantsInCart.remove(plant);
    notifyListeners();
  }
}
