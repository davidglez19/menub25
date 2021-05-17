import 'package:ejemplosb25/src/widgets/drawer.dart';
import 'package:flutter/material.dart';

class MenuDrawarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu utilizando Drawer'),
      ),
      drawer: DrawerCoustom(),
      body: Center(
        child: Text('Hola Mundo'),
      ),
    );
  }
}
