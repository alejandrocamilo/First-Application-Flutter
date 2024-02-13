// Nombre: Felix Alejandro Camilo Javier
// Matricula: 2021-1016

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Mi Aplicacion")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/FotoApp.jpg'),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Felix Alejandro Camilo Javier",
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          StreamBuilder(
              stream: Stream.periodic(const Duration(seconds: 1)),
              builder: (context, snapshot) {
                return Text(
                  'Fecha y Hora Actual: ${DateFormat('dd/MM/yyyy HH:mm:ss').format(DateTime.now())}',
                  style: const TextStyle(fontSize: 16),
                );
              })
        ],
      )),
    ));
  }
}
