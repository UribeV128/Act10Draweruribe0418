//import 'package:ejemplo_drawer_menu/drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:uribe0418/drawer_menu.dart';

class Cliente extends StatefulWidget {
  static const String routeName = '/cliente';

  @override
  State<Cliente> createState() => _ClienteState();
}

class _ClienteState extends State<Cliente> {
  //create the controllers
  TextEditingController idController = TextEditingController();
  TextEditingController nombreController = TextEditingController();
  TextEditingController apController = TextEditingController();
  TextEditingController amController = TextEditingController();
  TextEditingController telController = TextEditingController();
  TextEditingController correoController = TextEditingController();
  TextEditingController curpController = TextEditingController();
  TextEditingController domController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina de Registro Cliente'),
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
              const Text('Apellido materno'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: amController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa tu apellido materno',
                ),
              ),
              SizedBox(
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
                  hintText: 'Ingresa tu numero de telefono',
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
                  hintText: 'Ingresa tu correo',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('CURP'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: curpController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa tu CURP',
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
              //create button for register
              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print('Los datos del cliente se registraron con exito');
                  print('Id: ' + idController.text);
                  print('Nombre: ' + nombreController.text);
                  print('Apellido Paterno: ' + apController.text);
                  print('Apellido Materno: ' + amController.text);
                  print('Telefono: ' + telController.text);
                  print('Correo: ' + correoController.text);
                  print('Curp: ' + curpController.text);
                  print('Domicilio: ' + domController.text);
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
