import 'package:flutter/material.dart';
import 'package:uribe0418/cliente.dart';
import 'package:uribe0418/empleado.dart';
import 'package:uribe0418/producto.dart';
import 'package:uribe0418/sucursal.dart';
import 'package:uribe0418/ventas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String cliente = Cliente.routeName;
  static const String empleado = Empleado.routeName;
  static const String producto = Producto.routeName;
  static const String sucursal = Sucursal.routeName;
  static const String ventas = Ventas.routeName;
  //static const String row_cinco = Row_cinco.routeName;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo Drawer Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        cliente: (context) => Cliente(),
        empleado: (context) => Empleado(),
        producto: (context) => Producto(),
        sucursal: (context) => Sucursal(),
        ventas: (context) => Ventas(),
        //  row_cinco: (context) => Row_cinco(),
      },
      home: Cliente(),
    );
  }
}
