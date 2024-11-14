import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  const FoodTile({
    super.key,
    required this.food,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(left: 25),
      padding: const EdgeInsets.all(15), // Reduced padding
      child: SingleChildScrollView( // Allow scroll if content overflows
        child: Column(
          mainAxisSize: MainAxisSize.min, // Make column fit contents
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image with constrained height
            Image.asset(
              food.imagePath,
              height: 120, // Reduced height to fit within constraints
              fit: BoxFit.cover, // Cover the space available
            ),

            const SizedBox(height: 10), // Add spacing between elements

            // Food name
            Text(
              food.name,
              style: GoogleFonts.dmSerifDisplay(fontSize: 20),
            ),

            const SizedBox(height: 10), // Add spacing

            // Price + Rating Row
            SizedBox(
              width: 160,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Price
                  Text(
                    '\$${food.price}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                    ),
                  ),

                  // Rating
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[800],
                        size: 18,
                      ),
                      const SizedBox(width: 5), // Add spacing between icon and rating
                      Text(
                        food.rating,
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
