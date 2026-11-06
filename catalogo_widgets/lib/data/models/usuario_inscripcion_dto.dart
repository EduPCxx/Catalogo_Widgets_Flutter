class UsuarioInscripcionDto {
  const UsuarioInscripcionDto({
    required this.codigo,
    required this.nombrePila,
    required this.apellidos,
    required this.email,
    required this.telefono,
    required this.poblacion,
  });
  final int codigo;
  final String nombrePila;
  final String apellidos;
  final String email;
  final String telefono;
  final String poblacion;
}
