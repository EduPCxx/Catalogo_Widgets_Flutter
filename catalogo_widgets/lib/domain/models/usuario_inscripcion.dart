class UsuarioInscripcion {
  const UsuarioInscripcion({
    required this.id,
    required this.nombre,
    required this.apellidos,
    required this.correo,
    required this.telefono,
    required this.localidad,
  });
  final String id;
  final String nombre;
  final String apellidos;
  final String correo;
  final String telefono;
  final String localidad;
  String get nombreCompleto => '$nombre $apellidos';
}
