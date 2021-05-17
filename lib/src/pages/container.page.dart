import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Text('Contenedores'),
        ),
        body: Column(
          children: [
            _Cajas(
              titulo: 'I love flutter',
              icono: Icons.favorite,
              color: Colors.red,
            ),
            _Cajas(
              titulo: 'I love Dounts',
              icono: Icons.donut_large,
              color: Colors.brown,
            ),
            _Cajas(
              titulo: 'I See you',
              icono: Icons.visibility,
              color: Colors.blue,
            ),
          ],
        ));
  }
}

class _Cajas extends StatelessWidget {
  final String titulo;
  final IconData icono;
  final Color color;

  const _Cajas({this.titulo, this.icono, this.color});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.70,
      height: 90,
      margin: EdgeInsets.symmetric(
        horizontal: size.width * 0.15,
        vertical: 20,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              offset: Offset(1, 2),
              blurRadius: 5,
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(this.titulo, style: TextStyle(fontSize: 18)),
          SizedBox(height: 5),
          Icon(
            this.icono,
            color: this.color,
          )
        ],
      ),
    );
  }
}
