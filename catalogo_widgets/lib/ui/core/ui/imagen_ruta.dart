import 'package:flutter/material.dart';

enum VarianteImagenRuta { normal, panoramica }

class ImagenRuta extends StatelessWidget {
  final String assetPath;
  final VarianteImagenRuta variante;
  final String descripcionSemantica;

  const ImagenRuta({
    super.key,
    required this.assetPath,
    this.variante = VarianteImagenRuta.normal,
    required this.descripcionSemantica,
  });

  @override
  Widget build(BuildContext context) {
    final width = variante == VarianteImagenRuta.normal ? 240.0 : 300.0;
    final height = variante == VarianteImagenRuta.normal ? 180.0 : 120.0;

    return Semantics(
      label: descripcionSemantica,
      image: true,
      child: SizedBox(
        width: width,
        height: height,
        child: Image.asset(assetPath, fit: BoxFit.cover),
      ),
    );
  }
}
