import 'package:ejemplosb25/src/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Contador2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => _ContadorProvider(),
      child: Scaffold(
          appBar: AppBar(
            title: Text('Contador 2 Stateless'),
          ),
          drawer: DrawerCoustom(),
          body: _CuerpoApp(),
          // floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
          floatingActionButton: _BotonesAccion()),
    );
  }
}

class _CuerpoApp extends StatelessWidget {
  final TextStyle estiloTexto = new TextStyle(
    color: Colors.green,
    fontSize: 30,
    fontWeight: FontWeight.bold,
    letterSpacing: 3,
  );

  @override
  Widget build(BuildContext context) {
    final notificacion = Provider.of<_ContadorProvider>(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Número de Clicks', style: estiloTexto),
          SizedBox(height: 20),
          Text(
            '${notificacion.contador}',
            style: estiloTexto,
          ),
        ],
      ),
    );
  }
}

class _BotonesAccion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final notificacion = Provider.of<_ContadorProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 30),
        FloatingActionButton(
          child: Text('0'),
          onPressed: notificacion.reset,
          heroTag: '01',
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: notificacion.decrementar,
          heroTag: '02',
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: notificacion.incrementar,
            heroTag: '03',
          ),
        )
      ],
    );
  }
}

class _ContadorProvider with ChangeNotifier {
  int _contador = 0;

  int get contador => this._contador;

  void incrementar() {
    this._contador++;
    notifyListeners();
  }

  void decrementar() {
    this._contador--;
    notifyListeners();
  }

  void reset() {
    this._contador = 0;
    notifyListeners();
  }
}
