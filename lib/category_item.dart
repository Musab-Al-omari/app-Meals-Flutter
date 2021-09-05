import 'package:flutter/material.dart';
import 'screen/Meal_screen.dart';

class CatagoryItem extends StatelessWidget {
  final String title;
  final String id;
  final Color color;
  CatagoryItem(this.id, this.title, this.color);
  // void selectCategory(ctx) {
  //   Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
  //     return MealScreen(id, title);
  //   }));
  // }
  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      MealScreen.MealScreenRoute,
      arguments: {'id': id, 'title': title},
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}
