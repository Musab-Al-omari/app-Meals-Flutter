import 'dart:ffi';

import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  Widget DrawerBars(void Function() myOnTap, IconData myIcon, String title) {
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

  void toTheHome() {}
  void toTheSetting() {}
  @override
  Widget build(BuildContext context) {
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
          DrawerBars(toTheHome, Icons.restaurant_menu, 'Meals'),
          DrawerBars(toTheSetting, Icons.settings, 'Filters'),
        ],
      ),
    );
  }
}
