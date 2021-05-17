import 'package:ejemplosb25/src/widgets/drawer.dart';
import 'package:flutter/material.dart';

class ContadorApp extends StatefulWidget {
  @override
  _ContadorAppState createState() => _ContadorAppState();
}

class _ContadorAppState extends State<ContadorApp> {
  final TextStyle estiloTexto = new TextStyle(
    color: Colors.green,
    fontSize: 30,
    fontWeight: FontWeight.bold,
    letterSpacing: 3,
  );

  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contador App'),
        ),
        drawer: DrawerCoustom(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Número de Clicks', style: estiloTexto),
              SizedBox(height: 20),
              Text(
                '$contador',
                style: estiloTexto,
              ),
            ],
          ),
        ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: _botonesAcion());
  }

  Widget _botonesAcion() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 30),
        FloatingActionButton(
          child: Text('0'),
          onPressed: restablecer,
          heroTag: '01',
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: disminuir,
          heroTag: '02',
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: aumentar,
            heroTag: '03',
          ),
        )
      ],
    );
  }

  void aumentar() {
    setState(() {
      contador++;
    });
  }

  void disminuir() {
    setState(() {
      contador--;
    });
  }

  void restablecer() {
    setState(() {
      contador = 0;
    });
  }
}
