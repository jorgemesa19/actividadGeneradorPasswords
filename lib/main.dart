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
          title: const Text('Password generator'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
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
