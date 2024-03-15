import 'package:flutter/material.dart';
import 'package:actividad_generador_passwords/views/seccion_password.dart';
import 'package:actividad_generador_passwords/views/seccion_personalizar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _longitudPassword = 8;
  bool _mayusculas = true;
  bool _minusculas = true;
  bool _numeros = true;
  bool _simbolos = true;

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
              MiFila(
                longitudPassword: _longitudPassword,
                mayusculas: _mayusculas,
                minusculas: _minusculas,
                numeros: _numeros,
                simbolos: _simbolos,
              ),
              SeccionPersonalizar(
                onSettingsChanged: (longitud, facilDecir, facilLeer, todosCaracteres, mayusculas, minusculas, numeros, simbolos) {
                  setState(() {
                    _longitudPassword = longitud;
                    _mayusculas = mayusculas;
                    _minusculas = minusculas;
                    _numeros = numeros;
                    _simbolos = simbolos;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
