import 'package:flutter/material.dart';

class BotonConIcono extends StatelessWidget {
  final String texto;
  final IconData icono;
  final VoidCallback? onPressed;
  final bool secundario;

  const BotonConIcono({
    super.key,
    required this.texto,
    required this.icono,
    this.onPressed,
    this.secundario = false,
  });

  @override
  Widget build(BuildContext context) {
    if (secundario) {
      return OutlinedButton.icon(
        onPressed: onPressed,
        icon: Icon(icono),
        label: Text(texto),
      );
    }

    return FilledButton.icon(
      onPressed: onPressed,
      icon: Icon(icono),
      label: Text(texto),
    );
  }
}
