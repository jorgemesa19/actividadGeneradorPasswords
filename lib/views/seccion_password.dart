import 'package:flutter/material.dart';

class MiFila extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey, // Color del borde
              width: 1, // Grosor del borde
            ),
          ),
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Texto ejemplo',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(Icons.content_copy),
                    onPressed: () {
                      // Aquí puedes implementar la lógica para copiar texto
                      // Por ejemplo: Clipboard.setData(ClipboardData(text: 'Texto a copiar'));
                    },
                  ),
                ],
              ),
              SizedBox(width: 10), // Separación entre los iconos
              Column(
                children: [
                  IconButton(
                    icon: Icon(Icons.refresh),
                    onPressed: () {
                      // Aquí puedes implementar la lógica para refrescar
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 20), // Espacio entre el contenedor y el borde superior
        // Aquí puedes agregar más widgets si lo necesitas
      ],
    );
  }
}
