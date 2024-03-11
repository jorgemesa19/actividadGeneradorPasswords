import 'package:flutter/material.dart';

class SeccionPersonalizar extends StatelessWidget {
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
                  value: 8,
                  min: 6,
                  max: 20,
                  divisions: 14,
                  label: '8',
                  onChanged: (value) {},
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          ListTile(
            title: Text('Facil de decir'),
            leading: Radio(
              value: true,
              groupValue: true,
              onChanged: (value) {},
            ),
          ),
          ListTile(
            title: Text('Facil de leer'),
            leading: Radio(
              value: true,
              groupValue: false,
              onChanged: (value) {},
            ),
          ),
          ListTile(
            title: Text('Todos los caracteres'),
            leading: Radio(
              value: true,
              groupValue: false,
              onChanged: (value) {},
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (value) {},
              ),
              Text('Mayúsculas'),
              Checkbox(
                value: false,
                onChanged: (value) {},
              ),
              Text('Minúsculas'),
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (value) {},
              ),
              Text('Números'),
              Checkbox(
                value: false,
                onChanged: (value) {},
              ),
              Text('Símbolos'),
            ],
          ),
        ],
      ),
    );
  }
}
