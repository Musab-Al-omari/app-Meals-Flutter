import 'dart:html';

import 'package:flutter/material.dart';
import 'cataegories_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals Store',
      theme: ThemeData(primaryColor: Colors.blue),
      home: CataegoriesScreen(),
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
