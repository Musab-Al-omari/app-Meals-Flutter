import 'package:flutter/material.dart';
import 'package:meals_app/screen/cataegories_screen.dart';
import 'package:meals_app/screen/favorites.dart';
import 'package:meals_app/widgets/Drawer_main.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List<Widget> _page = [CataegoriesScreen(), Favorite()];

  int selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: const Text('Meals Store'),
      ),
      body: _page[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedPage = index;
          });
        },
        // backgroundColor: ,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category_sharp),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
