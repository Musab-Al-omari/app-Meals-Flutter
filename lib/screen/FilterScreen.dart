import 'package:flutter/material.dart';
import 'package:meals_app/widgets/Drawer_main.dart';

class FilterScreen extends StatelessWidget {
  static const FilterScreenRoute = '/Filter-Route';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('fillter'),
      ),
      drawer: AppDrawer(),
    );
  }
}
