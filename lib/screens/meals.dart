import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/screens/meal.dart';
import 'package:meals_app/widgets/meal_item.dart';
import 'package:meals_app/widgets/meal_item_details.dart';


class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.meals, required this.title});

  final List<Meal> meals;
  final String title;

    void _selectMeal(BuildContext context, Meal meal) {

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MealScreen(
          title: meal.title,
          meal: meal,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) {
          final meal = meals[index];
          return InkWell(
            onTap: () {_selectMeal(ctx, meals[index]); },
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  MealItem(meal: meal, onSelectMeal: () {_selectMeal(ctx, meals[index]); }),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
