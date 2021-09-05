import 'package:flutter/material.dart';
import '../dummy_data.dart';

class MealDetails extends StatelessWidget {
  static const MealDetailsRoute = '/Meal-details';

  Widget buildTitleSection(BuildContext context, text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  Widget buildContainer(child) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 200,
      width: 300,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final detailsItem =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final _id = detailsItem['id'];
    final selectedMeal = DUMMY_MEALS.firstWhere((data) => data.id == _id);

    return Scaffold(
      appBar: AppBar(title: Text(selectedMeal.title)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildTitleSection(context, 'Ingredients'),
            buildContainer(
              ListView.builder(
                itemBuilder: (context, index) => Card(
                  color: Theme.of(context).accentColor,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    child: Text(selectedMeal.ingredients[index]),
                  ),
                ),
                itemCount: selectedMeal.ingredients.length,
              ),
            ),
            buildTitleSection(context, 'Steps'),
            buildContainer(
              ListView.builder(
                itemBuilder: (context, index) => Column(children: [
                  ListTile(
                    leading: CircleAvatar(
                      child: Text('# ${index + 1}'),
                    ),
                    title: Text(selectedMeal.steps[index]),
                  ),
                  Divider(
                    color: Theme.of(context).accentColor,
                    thickness: 3,
                  )
                ]),
                itemCount: selectedMeal.steps.length,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop(_id);
        },
        child: Icon(Icons.delete),
      ),
    );
  }
}
