import 'package:flutter/material.dart';
import 'package:meals_app/widgets/Drawer_main.dart';

class FilterScreen extends StatefulWidget {
  static const FilterScreenRoute = '/Filter-Route';
  final Function setFilters;
  final Map<String, bool> cruuntFilter;
  FilterScreen(this.setFilters, this.cruuntFilter);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _isGlutenFree = false;
  var _isVegan = false;
  var _isVegetarian = false;
  var _isLactoseFree = false;

  @override
  void initState() {
    _isGlutenFree = widget.cruuntFilter['gluten'] as bool;
    _isVegan = widget.cruuntFilter['vegan'] as bool;
    _isVegetarian = widget.cruuntFilter['vegetarian'] as bool;
    _isLactoseFree = widget.cruuntFilter['lactose'] as bool;
    super.initState();
  }

  Widget buildSwitch(
      String title, String subTitle, bool myBool, Function(bool) updateValue) {
    return SwitchListTile(
        title: Text(title),
        subtitle: Text(subTitle),
        value: myBool,
        onChanged: updateValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('fillter'),
        actions: [
          IconButton(
              onPressed: () {
                widget.setFilters({
                  'gluten': _isGlutenFree,
                  'lactose': _isLactoseFree,
                  'vegan': _isVegan,
                  'vegetarian': _isVegetarian,
                });
              },
              icon: Icon(Icons.save))
        ],
      ),
      drawer: AppDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              buildSwitch(
                'Gluten-free',
                'only iclude gluteen-free meal',
                _isGlutenFree,
                (value) {
                  setState(() {
                    _isGlutenFree = value;
                  });
                },
              ),
              buildSwitch(
                'Vegan-free',
                'only iclude Vegan-free meal',
                _isVegan,
                (value) {
                  setState(() {
                    _isVegan = value;
                  });
                },
              ),
              buildSwitch(
                'Vegetarian-free',
                'only iclude Vegetarian-free meal',
                _isVegetarian,
                (value) {
                  setState(() {
                    _isVegetarian = value;
                  });
                },
              ),
              buildSwitch(
                'Lactose-free',
                'only iclude Lactose-free meal',
                _isLactoseFree,
                (value) {
                  setState(() {
                    _isLactoseFree = value;
                  });
                },
              ),
              // buildSwitch(),
            ],
          ))
        ],
      ),
    );
  }
}
