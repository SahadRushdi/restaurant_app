import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/models/shop.dart';
import 'package:restaurant_app/theme/colors.dart';

import '../models/food.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Text("My Cart"),
          backgroundColor: primaryColor,
        ),
        body:   ListView.builder(
            itemCount: value.cart.length,
            itemBuilder: (context, index) {
              //   get food from cart
              final Food food = value.cart[index];

              //   get food name
              final String foodName = food.name;

              //   get food price
              final String foodPrice = food.price;

              //   return list title
              return ListTile(
                title: Text(foodName),
                subtitle: Text(foodPrice),
              );
            }
        ),
      ),
    );
  }
}
