import 'package:flutter/material.dart';

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

    return Scaffold(
      appBar: AppBar(title: Text(mealTitle!)),
      body: Center(
        child: Text('new'),
      ),
    );
  }
}
