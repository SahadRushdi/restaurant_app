import 'package:flutter/material.dart';
import 'food.dart';

class Shop extends ChangeNotifier {
  // Menu Page
  final List <Food> _foodMenu = [
    // Salmon Sushi
    Food(
      name: "Salmon Sushi",
      price: "21.00",
      imagePath: "lib/images/salmon_sushi.png",
      rating: "4.9",
    ),

    //   Tuna
    Food(
      name: "Tuna",
      price: "24.00",
      imagePath: "lib/images/tuna.png",
      rating: "4.3",
    ),

    // Ramen
    Food(
        name: "Ramen",
        price: "22.00",
        imagePath: "lib/images/noodles.png",
        rating: "4.1"
    ),

    // Okonomiyaki
    Food(
        name: "Okonomiyaki",
        price: "19.00",
        imagePath: "lib/images/okonomiyaki.png",
        rating: "3.8"
    ),
  ];

//   Customer Cart
  List<Food> _cart = [];

//   getter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

//   add to cart
  void addToCart(Food foodItem, int quantity) {
    for(int i=0; i<quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

// remove from cart
  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}