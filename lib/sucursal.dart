//import 'package:ejemplo_drawer_menu/drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:uribe0418/drawer_menu.dart';

class Sucursal extends StatefulWidget {
  static const String routeName = '/Sucursal';

  @override
  State<Sucursal> createState() => _SucursalState();
}

class _SucursalState extends State<Sucursal> {
  //create the controllers
  TextEditingController idController = TextEditingController();
  TextEditingController paisController = TextEditingController();
  TextEditingController estController = TextEditingController();
  TextEditingController cdController = TextEditingController();
  TextEditingController domController = TextEditingController();
  TextEditingController telController = TextEditingController();
  TextEditingController cpController = TextEditingController();
  TextEditingController correoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina de Registro Sucursal'),
      ),
      drawer: DrawerMenu(),
      //for the form to be in center
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              const Text('Id'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa tu id',
                ),
              ),
              //some space between name and email
              const SizedBox(
                height: 10,
              ),
              const Text('Pais'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: paisController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el pais correspondiente',
                ),
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('Estado'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: estController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa estado correspondiente',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Ciudad'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: cdController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa la ciudad correspondiente',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Domicilio'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: domController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el domicilio de la sucursal',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Telefono'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: telController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el telefono de la sucursal',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Codigo postal'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: cpController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el codigo postal de la sucursal',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Correo'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: correoController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el correo de la sucursal',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //create button for register
              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print('Los datos de la sucursal se registraron con exito');
                  print('Id: ' + idController.text);
                  print('Pais: ' + paisController.text);
                  print('Estado: ' + estController.text);
                  print('Ciudad: ' + cdController.text);
                  print('Domicilio: ' + domController.text);
                  print('Telefono: ' + telController.text);
                  print('Codigo Postal: ' + cpController.text);
                  print('Correo de la sucursal: ' + correoController.text);
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
