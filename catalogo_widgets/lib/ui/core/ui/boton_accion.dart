import 'package:flutter/material.dart';

class BotonAccion extends StatelessWidget {
  final String texto;
  final VoidCallback? onPressed;
  final bool destacado;

  const BotonAccion({
    super.key,
    required this.texto,
    this.onPressed,
    this.destacado = false,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        padding: destacado
            ? const EdgeInsets.symmetric(horizontal: 32, vertical: 20)
            : const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        backgroundColor: destacado
            ? const Color.fromARGB(255, 8, 236, 0)
            : const Color.fromARGB(255, 255, 0, 0),
        foregroundColor: Colors.white,
      ),
      child: Text(texto),
    );
  }
}
