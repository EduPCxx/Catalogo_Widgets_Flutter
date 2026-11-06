import '../models/usuario_inscripcion_dto.dart';
import '../models/taller_dto.dart';

class InscripcionesLocalService {
  const InscripcionesLocalService();

  List<UsuarioInscripcionDto> leerUsuarios() => const [
    UsuarioInscripcionDto(
      codigo: 1,
      nombrePila: 'Ana',
      apellidos: 'García Pérez',
      email: 'ana@centro.es',
      telefono: '600 000 001',
      poblacion: 'Xàtiva',
    ),
    UsuarioInscripcionDto(
      codigo: 2,
      nombrePila: 'Pau',
      apellidos: 'Soler Vidal',
      email: 'pau@centro.es',
      telefono: '600 000 002',
      poblacion: 'Alzira',
    ),
  ];

  List<TallerDto> leerTalleres() => const [
    TallerDto(codigo: 10, etiqueta: 'Fotografía'),
    TallerDto(codigo: 20, etiqueta: 'Cerámica'),
    TallerDto(codigo: 30, etiqueta: 'Huerto urbano'),
  ];
}
