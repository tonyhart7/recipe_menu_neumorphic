import 'package:flutter/material.dart';
import 'package:recipe_menu_neumorphic/models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> faforiteMeals;

  FavoritesScreen(this.faforiteMeals);

  @override
  Widget build(BuildContext context) {
    if (faforiteMeals.isEmpty) {
      return Center(
        child: Text("You have no faforites yet - start adding some!"),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: faforiteMeals[index].id,
            title: faforiteMeals[index].title,
            imageUrl: faforiteMeals[index].imageUrl,
            duration: faforiteMeals[index].duration,
            complexity: faforiteMeals[index].complexity,
            affordability: faforiteMeals[index].affordability,
          );
        },
        itemCount: faforiteMeals.length,
      );
    }
  }
}
