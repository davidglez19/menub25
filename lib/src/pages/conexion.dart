import 'dart:async';
import 'package:flutter/material.dart';

import 'package:ejemplosb25/src/provider/connectionStatusSingleton.dart';

class TestWidget extends StatefulWidget {
  @override
  TestWidgetState createState() => new TestWidgetState();
}

class TestWidgetState extends State<TestWidget> {
  StreamSubscription<dynamic> connectionChangeStream;

  bool isOffline = false;

  @override
  initState() {
    super.initState();

    ConnectionStatusSingleton connectionStatus =
        ConnectionStatusSingleton.getInstance();
    connectionChangeStream =
        connectionStatus.connectionChange.listen(connectionChanged);
    print('CONEXION $connectionChangeStream');
    print('Inicializar SingleTon');
  }

  void connectionChanged(dynamic hasConnection) {
    setState(() {
      isOffline = !hasConnection;
      print('VALOR DE ISOFFLINE $isOffline');
    });
  }

  @override
  Widget build(BuildContext ctxt) {
    return (isOffline) ? new Text("Not connected") : new Text("Connected");
  }
}
