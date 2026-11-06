import 'usuario_inscripcion.dart';
import 'taller.dart';

class DatosAcceso {
  const DatosAcceso({
    required this.usuario,
    required this.taller,
    required this.recordatorio,
  });
  final UsuarioInscripcion usuario;
  final Taller taller;
  final bool recordatorio;
}
