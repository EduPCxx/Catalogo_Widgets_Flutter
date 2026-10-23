import 'package:catalogo_widget/ui/core/ui/etiqueta_catalogo.dart';
import 'package:flutter/material.dart';

class BotonesEjemplosPantalla extends StatelessWidget {
  const BotonesEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de Buttons')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          EtiquetaCatalogo(texto: 'Ruta de la cascada'),
          SizedBox(height: 16),
          EtiquetaCatalogo(
            texto: 'Ruta de la cascada',
            variante: VarianteEtiqueta.normal,
          ),
          SizedBox(height: 24),
          //_BotonPsoeta(),
        ],
      ),
    );
  }
}
