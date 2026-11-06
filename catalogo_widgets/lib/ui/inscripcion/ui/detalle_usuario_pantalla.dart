import 'package:flutter/material.dart';

import '../../../domain/models/datos_acceso.dart';

class DetalleUsuarioPantalla extends StatelessWidget {
  const DetalleUsuarioPantalla({super.key, required this.acceso});
  final DatosAcceso acceso;

  @override
  Widget build(BuildContext context) {
    final usuario = acceso.usuario;
    return Scaffold(
      appBar: AppBar(title: const Text('Detalle del usuario')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Text(
              '¡Hola, ${usuario.nombreCompleto}!',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16),
            Text('Identificador: ${usuario.id}'),
            Text('Nombre: ${usuario.nombre}'),
            Text('Apellidos: ${usuario.apellidos}'),
            Text('Correo: ${usuario.correo}'),
            Text('Teléfono: ${usuario.telefono}'),
            Text('Localidad: ${usuario.localidad}'),
            const SizedBox(height: 16),
            Text('Taller: ${acceso.taller.titulo}'),
            Text(
              acceso.recordatorio
                  ? 'Recordatorio solicitado (simulado)'
                  : 'Sin recordatorio',
            ),
            const Text(
              'Consulta de datos ficticios. No se guarda la inscripción.',
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Volver al formulario'),
            ),
          ],
        ),
      ),
    );
  }
}
