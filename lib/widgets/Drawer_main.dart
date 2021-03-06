import 'package:flutter/material.dart';
import '../screen/FilterScreen.dart';

class AppDrawer extends StatelessWidget {
  Widget DrawerBars(myOnTap, IconData myIcon, String title) {
    return ListTile(
      onTap: myOnTap,
      leading: Icon(
        myIcon,
        size: 25,
      ),
      title: Text(
        title,
        style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 24,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // void toTheSetting() {}
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text(
              'Home',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          DrawerBars(() {
            Navigator.pushReplacementNamed(context, '/');
          }, Icons.restaurant_menu, 'Meals'),
          DrawerBars(() {
            Navigator.pushReplacementNamed(
                context, FilterScreen.FilterScreenRoute);
          }, Icons.settings, 'Filters'),
        ],
      ),
    );
  }
}
