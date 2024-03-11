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
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Personalice su contraseña',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text('Longitud de contraseña:'),
              SizedBox(width: 10),
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
          SizedBox(height: 10),
          ListTile(
            title: Text('Facil de decir'),
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
            title: Text('Facil de leer'),
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
            title: Text('Todos los caracteres'),
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
          SizedBox(height: 10),
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
              Text('Mayúsculas'),
              Checkbox(
                value: _minusculas,
                onChanged: (value) {
                  setState(() {
                    _minusculas = value!;
                  });
                },
              ),
              Text('Minúsculas'),
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
              Text('Números'),
              Checkbox(
                value: _simbolos,
                onChanged: (value) {
                  setState(() {
                    _simbolos = value!;
                  });
                },
              ),
              Text('Símbolos'),
            ],
          ),
        ],
      ),
    );
  }
}
