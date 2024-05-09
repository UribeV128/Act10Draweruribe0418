import 'package:flutter/material.dart';

import 'main.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _buildDrawerHeader(),
          _buildDrawerItem(
              icon: Icons.person_2_sharp,
              text: 'Tabla Cliente',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.cliente)}),
          _buildDrawerItem(
              icon: Icons.girl_sharp,
              text: 'Tabla Empleado',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.empleado)}),
          _buildDrawerItem(
              icon: Icons.flare,
              text: 'Tabla Producto',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.producto)}),
          _buildDrawerItem(
              icon: Icons.fmd_good_rounded,
              text: 'Tabla Sucursal',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.sucursal)}),
          _buildDrawerItem(
              icon: Icons.grading,
              text: 'Tabla Ventas',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.ventas)}),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/drawer_header.jpg'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Drawer Tablas",
                  style: TextStyle(
                      color: Color(0xff161414),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _buildDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
