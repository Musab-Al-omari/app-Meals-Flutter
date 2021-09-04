import 'package:flutter/material.dart';
import 'package:meals_app/widgets/meal_item.dart';
import '../dummy_data.dart';

class MealScreen extends StatelessWidget {
  static const MealScreenRoute = '/Meal-Screen';
  // final String mealId;
  // final String mealTitle;
  // MealScreen(this.mealId, this.mealTitle);

  @override
  Widget build(BuildContext context) {
    final modaleRout =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final mealTitle = modaleRout['title'];
    final mealId = modaleRout['id'];

    final myCataMeal = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(mealId);
    }).toList();
    return Scaffold(
      appBar: AppBar(title: Text(mealTitle!)),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return MealItems(
                id: myCataMeal[index].id,
                title: myCataMeal[index].title,
                imageUrl: myCataMeal[index].imageUrl,
                duration: myCataMeal[index].duration,
                complexity: myCataMeal[index].complexity,
                affordability: myCataMeal[index].affordability);
          },
          itemCount: myCataMeal.length,
        ),
      ),
    );
  }
}
