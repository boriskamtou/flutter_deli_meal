import 'package:deli_meals/dummy_data.dart';
import 'package:deli_meals/widgets/meal_item.dart';
import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {
  static const routeName = '/categories-meal';

  @override
  Widget build(BuildContext context) {
    final routesArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routesArgs['title'];
    final categoryId = routesArgs['id'];
    final categoriesMeal = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryTitle,
        ),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: categoriesMeal[index].id,
            title: categoriesMeal[index].title,
            imageUrl: categoriesMeal[index].imageUrl,
            duration: categoriesMeal[index].duration,
            affordability: categoriesMeal[index].affordability,
            complexity: categoriesMeal[index].complexity,
          );
        },
        itemCount: categoriesMeal.length,
      ),
    );
  }
}
