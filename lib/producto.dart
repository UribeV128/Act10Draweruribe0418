//import 'package:ejemplo_drawer_menu/drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:uribe0418/drawer_menu.dart';

class Producto extends StatefulWidget {
  static const String routeName = '/Producto';

  @override
  State<Producto> createState() => _ProductoState();
}

class _ProductoState extends State<Producto> {
  //create the controllers
  TextEditingController idController = TextEditingController();
  TextEditingController nomproController = TextEditingController();
  TextEditingController catController = TextEditingController();
  TextEditingController cantproController = TextEditingController();
  TextEditingController cantconController = TextEditingController();
  TextEditingController sucController = TextEditingController();
  TextEditingController cadController = TextEditingController();
  TextEditingController precioController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina de Registro Producto'),
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
                  hintText: 'Ingresa el id',
                ),
              ),
              //some space between name and email
              const SizedBox(
                height: 10,
              ),
              const Text('Nombre del producto'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nomproController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el nombre dek producto',
                ),
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('Categoria'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: catController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa la categoria del producto',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Cantidad de productos'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: cantproController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa la cantidad de productos',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Cantidad del contenido del producto'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: cantconController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa la cantidad en ml',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Sucursal'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: sucController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa la sucursal',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Caducidad'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: cadController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa la caducidad',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Precio del producto'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: precioController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingresa el precio del producto',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //create button for register
              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print('Los datos del producto se registraron con exito');
                  print('Id: ' + idController.text);
                  print('Nombre del producto: ' + nomproController.text);
                  print('Categoria: ' + catController.text);
                  print('Cantidad de productos: ' + cantproController.text);
                  print('Cantidad en del contenido del producto: ' +
                      cantconController.text);
                  print('Sucursal: ' + sucController.text);
                  print('Caducidad: ' + cadController.text);
                  print('Precio: ' + precioController.text);
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
