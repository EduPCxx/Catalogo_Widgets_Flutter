import 'package:flutter/material.dart';

enum EstadoRuta { pendiente, completada, error }

class IconoEstado extends StatelessWidget {
  final EstadoRuta estado;
  final double tamano;

  const IconoEstado({super.key, required this.estado, this.tamano = 32});

  @override
  Widget build(BuildContext context) {
    final IconData simbolo;
    final Color color;
    final String etiqueta;

    switch (estado) {
      case EstadoRuta.pendiente:
        simbolo = Icons.hourglass_empty;
        color = Colors.orange;
        etiqueta = "Pendiente";

      case EstadoRuta.completada:
        simbolo = Icons.check_circle;
        color = Colors.green;
        etiqueta = "Completada";

      case EstadoRuta.error:
        simbolo = Icons.error;
        color = Colors.red;
        etiqueta = "Error";
    }

    return Semantics(
      label: etiqueta,
      image: true,
      child: Icon(simbolo, size: tamano, color: color, semanticLabel: etiqueta),
    );
  }
}
