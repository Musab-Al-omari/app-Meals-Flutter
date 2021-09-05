import 'package:flutter/material.dart';
import 'package:meals_app/models/meal_Models.dart';
import 'package:meals_app/widgets/meal_item.dart';
import '../dummy_data.dart';

class MealScreen extends StatefulWidget {
  static const MealScreenRoute = '/Meal-Screen';

  @override
  _MealScreenState createState() => _MealScreenState();
}

class _MealScreenState extends State<MealScreen> {
  late String mealTitle;
  late String mealId;
  late List<Meal> myCataMeal;
  bool myInitState = false;

  removeItem(id) {
    setState(() {
      myCataMeal.removeWhere((element) => element.id == id);
    });
  }

  @override
  void didChangeDependencies() {
    if (!myInitState) {
      print('asd');
      final modaleRout =
          ModalRoute.of(context)!.settings.arguments as Map<String, String>;

      final mealId = modaleRout['id'];

      myCataMeal = DUMMY_MEALS.where((meal) {
        return meal.categories.contains(mealId);
      }).toList();
    }
    myInitState = true;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final mealTitle =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final lastTitle = mealTitle['title'];
    return Scaffold(
      appBar: AppBar(title: Text(lastTitle!)),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return MealItems(
              id: myCataMeal[index].id,
              title: myCataMeal[index].title,
              imageUrl: myCataMeal[index].imageUrl,
              duration: myCataMeal[index].duration,
              complexity: myCataMeal[index].complexity,
              affordability: myCataMeal[index].affordability,
              removeItem: removeItem,
            );
          },
          itemCount: myCataMeal.length,
        ),
      ),
    );
  }
}
