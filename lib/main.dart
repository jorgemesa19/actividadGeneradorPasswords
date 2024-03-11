import 'package:flutter/material.dart';
import 'package:actividad_generador_passwords/views/seccion_password.dart';
import 'package:actividad_generador_passwords/views/seccion_personalizar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ejemplo de Interfaz Gráfica'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MiFila(),
              SeccionPersonalizar(),
            ],
          ),
        ),
      ),
    );
  }
}
