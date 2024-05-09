//import 'package:ejemplo_drawer_menu/drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:uribe0418/drawer_menu.dart';

class Empleado extends StatefulWidget {
  static const String routeName = '/empleado';

  @override
  State<Empleado> createState() => _EmpleadoState();
}

class _EmpleadoState extends State<Empleado> {
  //create the controllers
  TextEditingController idController = TextEditingController();
  TextEditingController nombreController = TextEditingController();
  TextEditingController apController = TextEditingController();
  TextEditingController salController = TextEditingController();
  TextEditingController contController = TextEditingController();
  TextEditingController domController = TextEditingController();
  TextEditingController puestoController = TextEditingController();
  TextEditingController generoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina de Registro Empleado'),
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
              const Text('Nombre'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nombreController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa tu nombre',
                ),
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('Apellido Paterno'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: apController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa tu apellido paterno',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Salario'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: salController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa tu salario',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Contacto'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: contController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa tu contacto',
                ),
              ),
              const SizedBox(
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
                  hintText: 'Ingresa tu domicilio',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Puesto'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: puestoController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el puesto en el que trabajas',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Genero'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: generoController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa tu genero',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //create button for register
              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print('Los datos del empleado se registraron con exito');
                  print('Id: ' + idController.text);
                  print('Nombre: ' + nombreController.text);
                  print('Apellido paterno: ' + apController.text);
                  print('Salario: ' + salController.text);
                  print('Contacto: ' + contController.text);
                  print('Domicilio: ' + domController.text);
                  print('Puesto: ' + puestoController.text);
                  print('Genero: ' + generoController.text);
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
