import 'package:flutter/material.dart';

import '../../../data/repositories/inscripciones_local_repository.dart';
import '../../../data/services/inscripciones_local_service.dart';
import '../view_models/inscripcion_viewmodel.dart';
import 'inscripcion_pantalla.dart';

class InscripcionEjemploPantalla extends StatefulWidget {
  const InscripcionEjemploPantalla({super.key});

  @override
  State<InscripcionEjemploPantalla> createState() =>
      _InscripcionEjemploPantallaState();
}

class _InscripcionEjemploPantallaState
    extends State<InscripcionEjemploPantalla> {
  late final InscripcionViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    final repository = InscripcionesLocalRepository(
      const InscripcionesLocalService(),
    );
    _viewModel = InscripcionViewModel(repository);
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      InscripcionPantalla(viewModel: _viewModel);
}
