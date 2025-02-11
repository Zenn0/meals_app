import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';

class MealItemDetails extends StatelessWidget {
  const MealItemDetails({super.key, required this.meal});
  
  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(meal.imageUrl, fit: BoxFit.cover),
        SizedBox(height: 10),
        Text(
          meal.title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
                'Affordability: ${meal.affordability.toString().split('.').last}'),
            Text('Complexity: ${meal.complexity.toString().split('.').last}'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Vegetarian: ${meal.isVegetarian ? 'Yes' : 'No'}'),
            Text('Vegan: ${meal.isVegan ? 'Yes' : 'No'}'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Gluten Free: ${meal.isGlutenFree ? 'Yes' : 'No'}'),
            Text('Lactose Free: ${meal.isLactoseFree ? 'Yes' : 'No'}'),
          ],
        ),
        SizedBox(height: 10),
        Text('Duration: ${meal.duration} min'),
        SizedBox(height: 10),
        Text('Ingredients:', style: Theme.of(context).textTheme.titleSmall),
        ...meal.ingredients.map((ingredient) => Text(ingredient)).toList(),
        SizedBox(height: 10),
        Text('Steps:', style: Theme.of(context).textTheme.titleSmall),
        ...meal.steps.map((step) => Text(step)),
      ],
    );
  }
}
