import 'package:flutter/material.dart';

import './dummy_data.dart';
import 'category_item.dart';

class CataegoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meals Store'),
      ),
      body: GridView(
        children: DUMMY_CATEGORIES.map((cata) {
          return CatagoryItem(cata.title, cata.color);
        }).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
