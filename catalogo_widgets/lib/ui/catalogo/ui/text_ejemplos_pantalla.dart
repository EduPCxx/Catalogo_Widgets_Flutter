import 'package:catalogo_widget/ui/core/ui/etiqueta_catalogo.dart';
import 'package:catalogo_widget/ui/core/ui/texto_jerarquico.dart';
import 'package:catalogo_widget/ui/core/ui/texto_resumen.dart';
import 'package:flutter/material.dart';

class TextEjemplosPantalla extends StatelessWidget {
  const TextEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de Text')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          EtiquetaCatalogo(texto: 'Ruta de la cascada'),
          SizedBox(height: 16),
          EtiquetaCatalogo(
            texto: 'Ruta de la cascada',
            variante: VarianteEtiqueta.normal,
          ),
          TextoJerarquico(texto: "Título", tipo: TipoTexto.titulo),
          TextoJerarquico(texto: "Subtítulo", tipo: TipoTexto.subtitulo),
          TextoJerarquico(texto: "Cuerpo de texto", tipo: TipoTexto.cuerpo),
          TextoResumen(texto: "texto", maxLines: 1),
          TextoResumen(texto: "texto", maxLines: 2, centrado: true),
        ],
      ),
    );
  }
}
