import 'package:ejemplosb25/src/pages/contador.dart';
import 'package:ejemplosb25/src/pages/contador2.dart';
import 'package:ejemplosb25/src/pages/menu_drawer.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuDrawarPage(),
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => MenuDrawarPage(),
        'contador1': (BuildContext context) => ContadorApp(),
        'contador2': (BuildContext context) => Contador2Page(),
      },
    );
  }
}
