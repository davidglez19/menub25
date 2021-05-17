import 'package:flutter/material.dart';

class DrawerCoustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _CreateHeader(),
          _DrawerItems(
            icono: Icons.home,
            texto: 'Inicio',
            tap: () => Navigator.pushReplacementNamed(context, 'home'),
          ),
          _DrawerItems(
            icono: Icons.event,
            texto: 'Eventos',
            tap: () => Navigator.pushReplacementNamed(context, 'contador1'),
          ),
          _DrawerItems(
            icono: Icons.collections,
            texto: 'Collecciones',
            tap: () => Navigator.pushReplacementNamed(context, 'contador2'),
          ),
          Divider(),
          _DrawerItems(
            icono: Icons.face,
            texto: 'Autores',
          ),
          _DrawerItems(
            icono: Icons.account_box,
            texto: 'Documentación',
          ),
          Divider(),
          _DrawerItems(
            icono: Icons.star,
            texto: 'Links',
          ),
          _DrawerItems(
            icono: Icons.bug_report,
            texto: 'Reportes',
          ),
        ],
      ),
    );
  }
}

class _CreateHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/img/fondo.jpeg'),
        fit: BoxFit.cover,
      )),
      child: Stack(
        children: [
          Positioned(
            child: Text(
              'Menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            left: 30,
            bottom: 12,
          )
        ],
      ),
    );
  }
}

class _DrawerItems extends StatelessWidget {
  final IconData icono;
  final String texto;
  Function tap;
  _DrawerItems({this.icono, this.texto, this.tap});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Icon(icono),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text(texto),
          )
        ],
      ),
      onTap: tap,
    );
  }
}
