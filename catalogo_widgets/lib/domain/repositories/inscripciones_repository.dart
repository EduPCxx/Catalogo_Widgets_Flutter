import '../models/usuario_inscripcion.dart';
import '../models/taller.dart';

abstract class InscripcionesRepository {
  List<Taller> obtenerTalleres();
  UsuarioInscripcion? buscarUsuario(String nombre, String correo);
}
