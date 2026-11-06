import '../../domain/models/usuario_inscripcion.dart';
import '../../domain/models/taller.dart';
import '../../domain/repositories/inscripciones_repository.dart';
import '../services/inscripciones_local_service.dart';

class InscripcionesLocalRepository implements InscripcionesRepository {
  InscripcionesLocalRepository(InscripcionesLocalService servicio)
    : _usuarios = List.unmodifiable(
        servicio.leerUsuarios().map(
          (dto) => UsuarioInscripcion(
            id: dto.codigo.toString(),
            nombre: dto.nombrePila,
            apellidos: dto.apellidos,
            correo: dto.email,
            telefono: dto.telefono,
            localidad: dto.poblacion,
          ),
        ),
      ),
      _talleres = List.unmodifiable(
        servicio.leerTalleres().map(
          (dto) => Taller(id: dto.codigo.toString(), titulo: dto.etiqueta),
        ),
      );

  final List<UsuarioInscripcion> _usuarios;
  final List<Taller> _talleres;

  @override
  List<Taller> obtenerTalleres() => _talleres;

  @override
  UsuarioInscripcion? buscarUsuario(String nombre, String correo) {
    final nombreBuscado = nombre.trim().toLowerCase();
    final correoBuscado = correo.trim().toLowerCase();
    for (final usuario in _usuarios) {
      if (usuario.nombre.toLowerCase() == nombreBuscado &&
          usuario.correo.toLowerCase() == correoBuscado) {
        return usuario;
      }
    }
    return null;
  }
}
