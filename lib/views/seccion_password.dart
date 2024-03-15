import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MiFila extends StatefulWidget {
  final double longitudPassword;
  final bool mayusculas;
  final bool minusculas;
  final bool numeros;
  final bool simbolos;

  const MiFila({
    required this.longitudPassword,
    required this.mayusculas,
    required this.minusculas,
    required this.numeros,
    required this.simbolos,
  });

  @override
  _MiFilaState createState() => _MiFilaState();
}

class _MiFilaState extends State<MiFila> {
  late String password;

  @override
  void initState() {
    super.initState();
    password = _generatePassword(widget.longitudPassword, widget.mayusculas, widget.minusculas, widget.numeros, widget.simbolos);
  }

  String _generatePassword(double longitud, bool mayusculas, bool minusculas, bool numeros, bool simbolos) {
    String chars = '';
    if (mayusculas) chars += 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    if (minusculas) chars += 'abcdefghijklmnopqrstuvwxyz';
    if (numeros) chars += '0123456789';
    if (simbolos) chars += '!@#\$%^&*()-_=+[{]}|;:,<.>/';
  
    final random = Random.secure();
    return List.generate(longitud.round(), (index) => chars[random.nextInt(chars.length)]).join();
  }

  void _copyToClipboard() {
    Clipboard.setData(ClipboardData(text: password));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Contraseña copiada al portapapeles')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey,
              width: 1,
            ),
          ),
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      password,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: const Icon(Icons.content_copy),
                onPressed: _copyToClipboard,
              ),
              IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: () {
                  setState(() {
                    password = _generatePassword(widget.longitudPassword, widget.mayusculas, widget.minusculas, widget.numeros, widget.simbolos);
                  });
                },
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
