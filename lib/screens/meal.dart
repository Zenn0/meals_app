import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/meal_item.dart';
import 'package:meals_app/widgets/meal_item_details.dart';


class MealScreen extends StatelessWidget {
  const MealScreen({super.key, required this.meal, required this.title});

  final Meal meal;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(height: 10),
                MealItemDetails(meal: meal),
              ],
            ),
          ),
        ],
      )
    );
  }
}
