import 'package:flutter/material.dart';

import '../category_item.dart';
import '../dummy_data.dart';
// import '../widgets/category_item.dart';

class CataegoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(15),
      children: DUMMY_CATEGORIES.map((cata) {
        return CatagoryItem(cata.id, cata.title, cata.color);
      }).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
