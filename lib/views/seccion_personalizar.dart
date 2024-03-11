import 'package:flutter/material.dart';

class SeccionPersonalizar extends StatefulWidget {
  @override
  _SeccionPersonalizarState createState() => _SeccionPersonalizarState();
}

class _SeccionPersonalizarState extends State<SeccionPersonalizar> {
  double _longitudPassword = 8; // Valor inicial del slider
  bool _facilDecir = false;
  bool _facilLeer = false;
  bool _todosCaracteres = false;
  bool _mayusculas = false;
  bool _minusculas = false;
  bool _numeros = false;
  bool _simbolos = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey, // Color del borde
          width: 1, // Grosor del borde
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Personalice su contraseña',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Text('Longitud de contraseña:'),
              const SizedBox(width: 10),
              Expanded(
                child: Slider(
                  value: _longitudPassword,
                  min: 6,
                  max: 20,
                  divisions: 14,
                  label: _longitudPassword.round().toString(),
                  onChanged: (value) {
                    setState(() {
                      _longitudPassword = value;
                    });
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ListTile(
            title: const Text('Fácil de decir'),
            leading: Radio(
              value: true,
              groupValue: _facilDecir,
              onChanged: (value) {
                setState(() {
                  _facilDecir = value!;
                  _facilLeer = false;
                  _todosCaracteres = false;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Fácil de leer'),
            leading: Radio(
              value: true,
              groupValue: _facilLeer,
              onChanged: (value) {
                setState(() {
                  _facilDecir = false;
                  _facilLeer = value!;
                  _todosCaracteres = false;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Todos los caracteres'),
            leading: Radio(
              value: true,
              groupValue: _todosCaracteres,
              onChanged: (value) {
                setState(() {
                  _facilDecir = false;
                  _facilLeer = false;
                  _todosCaracteres = value!;
                });
              },
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Checkbox(
                value: _mayusculas,
                onChanged: (value) {
                  setState(() {
                    _mayusculas = value!;
                  });
                },
              ),
              const Text('Mayúsculas'),
              Checkbox(
                value: _minusculas,
                onChanged: (value) {
                  setState(() {
                    _minusculas = value!;
                  });
                },
              ),
              const Text('Minúsculas'),
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: _numeros,
                onChanged: (value) {
                  setState(() {
                    _numeros = value!;
                  });
                },
              ),
              const Text('Números'),
              Checkbox(
                value: _simbolos,
                onChanged: (value) {
                  setState(() {
                    _simbolos = value!;
                  });
                },
              ),
              const Text('Símbolos'),
            ],
          ),
        ],
      ),
    );
  }
}
