import 'package:flutter/foundation.dart';

import '../../../domain/models/datos_acceso.dart';
import '../../../domain/models/taller.dart';
import '../../../domain/repositories/inscripciones_repository.dart';

class InscripcionViewModel extends ChangeNotifier {
  InscripcionViewModel(this._repository)
    : talleres = List.unmodifiable(_repository.obtenerTalleres());

  final InscripcionesRepository _repository;
  final List<Taller> talleres;
  String _nombre = '';
  String _correo = '';
  String? _tallerId;
  bool _recordatorio = false;
  String? _error;

  String get nombre => _nombre;
  String get correo => _correo;
  String? get tallerId => _tallerId;
  bool get recordatorio => _recordatorio;
  String? get error => _error;

  void _avisarCambio() {
    _error = null;
    notifyListeners();
  }

  void cambiarNombre(String valor) {
    _nombre = valor;
    _avisarCambio();
  }

  void cambiarCorreo(String valor) {
    _correo = valor;
    _avisarCambio();
  }

  void cambiarTaller(String? valor) {
    _tallerId = valor;
    _avisarCambio();
  }

  void cambiarRecordatorio(bool valor) {
    _recordatorio = valor;
    _avisarCambio();
  }

  String? validarNombre(String? valor) => (valor ?? '').trim().length < 2
      ? 'Introduce al menos dos caracteres'
      : null;

  String? validarCorreo(String? valor) =>
      RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$').hasMatch((valor ?? '').trim())
      ? null
      : 'Introduce un correo con formato nombre@dominio.ext';

  String? validarTaller(String? valor) => talleres.any((t) => t.id == valor)
      ? null
      : 'Selecciona un taller de la lista';

  DatosAcceso? login() {
    if (validarNombre(_nombre) != null ||
        validarCorreo(_correo) != null ||
        validarTaller(_tallerId) != null) {
      _error = 'Revisa el nombre, el correo y el taller';
      notifyListeners();
      return null;
    }
    final usuario = _repository.buscarUsuario(_nombre, _correo);
    if (usuario == null) {
      _error = 'No hay un usuario de ejemplo con ese nombre y correo';
      notifyListeners();
      return null;
    }
    _error = null;
    return DatosAcceso(
      usuario: usuario,
      taller: talleres.firstWhere((t) => t.id == _tallerId),
      recordatorio: _recordatorio,
    );
  }
}
