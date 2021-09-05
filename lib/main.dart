import 'package:flutter/material.dart';
import 'package:meals_app/screen/FilterScreen.dart';
import 'package:meals_app/screen/tabs_screen.dart';
import 'package:meals_app/widgets/Drawer_main.dart';

// import 'screen/cataegories_screen.dart';
import 'screen/Meal_screen.dart';
import './screen/Meal_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals Store',
      theme: ThemeData(
          primaryColor: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                headline6: TextStyle(
                  fontSize: 24,
                  fontFamily: 'RobotoCondensed',
                ),
                bodyText1: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                bodyText2: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
              )),
      home: TabScreen(),
      routes: {
        MealScreen.MealScreenRoute: (context) => MealScreen(),
        MealDetails.MealDetailsRoute: (context) => MealDetails(),
        FilterScreen.FilterScreenRoute: (context) => FilterScreen(),
      },
      // onGenerateRoute: (settings) {
      //   print(settings.name);
      //   switch (settings.name) {
      //     case '/hello':
      //       return MaterialPageRoute(builder: (context) => HelloScreen1());
      //     case '/bye':
      //       return MaterialPageRoute(builder: (context) => byeScreen1());
      //     default:
      //       return MaterialPageRoute(builder: (context) => byeScreen1());
      //   }
      // },
      onUnknownRoute: (settings) {
        print(settings.arguments);
        return MaterialPageRoute(builder: (context) => UnfoundRoute());
      },
    );
  }
}

class UnfoundRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('404'),
      ),
      body: Center(
        child: Text('there is no route with such name '),
      ),
    );
  }
}
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Meals Store',
//         ),
//       ),
//       body: Center(
//         child: Text(
//           'Navigation Time',
//         ),
//       ),
//     );
//   }
// }
