//import 'package:ejemplo_drawer_menu/drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:uribe0418/drawer_menu.dart';

class Ventas extends StatefulWidget {
  static const String routeName = '/Ventas';

  @override
  State<Ventas> createState() => _VentasState();
}

class _VentasState extends State<Ventas> {
  //create the controllers
  TextEditingController idController = TextEditingController();
  TextEditingController idcController = TextEditingController();
  TextEditingController ideController = TextEditingController();
  TextEditingController idpController = TextEditingController();
  TextEditingController fechaController = TextEditingController();
  TextEditingController cantventasController = TextEditingController();
  TextEditingController ptotalController = TextEditingController();
  TextEditingController descController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina de Registro Ventas'),
      ),
      drawer: DrawerMenu(),
      //for the form to be in center
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              const Text('Id ventas'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el id de ventas',
                ),
              ),
              //some space between name and email
              const SizedBox(
                height: 10,
              ),
              const Text('Id Cliente'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idcController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el id del cliente',
                ),
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('Id Empleado'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: ideController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el id del empleado',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Id producto'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idpController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el di del producto',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Fecha'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: fechaController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa la fecha del dia de hoy',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Cantidad de ventas'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: cantventasController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa la cantidad de ventas',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Precio total'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: ptotalController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el precio toal',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Descuento'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: descController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa si tuvo algun descuento',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //create button for register
              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print('Los datos de las ventas se registraron con exito');
                  print('Id ventas: ' + idController.text);
                  print('Id cliente: ' + idcController.text);
                  print('Id empleado: ' + ideController.text);
                  print('id producto: ' + idpController.text);
                  print('Fecha: ' + fechaController.text);
                  print('Cantidad de ventas: ' + cantventasController.text);
                  print('Precio total: ' + ptotalController.text);
                  print('Descuentos: ' + descController.text);
                },
                child: Text(
                  'Registrar',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
