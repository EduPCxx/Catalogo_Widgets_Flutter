import 'package:flutter/material.dart';

class ImagenRemota extends StatelessWidget {
  final String url;
  final BoxFit fit;
  final double altura;
  final String? descripcionSemantica;
  final bool esDecorativa;

  ImagenRemota({
    super.key,
    required this.url,
    this.fit = BoxFit.cover,
    this.altura = 200.0,
    this.descripcionSemantica,
    this.esDecorativa = false,
  }) : assert(
         esDecorativa ||
             (descripcionSemantica != null && descripcionSemantica.isNotEmpty),
         'Si la imatge no és decorativa, la descripció no pot estar buida.',
       );

  @override
  Widget build(BuildContext context) {
    final imageWidget = Image.network(
      url,
      fit: fit,
      height: altura,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return SizedBox(
          height: altura,
          child: const Center(child: CircularProgressIndicator()),
        );
      },
      errorBuilder: (context, error, stackTrace) {
        return SizedBox(
          height: altura,
          child: const Center(
            child: Icon(Icons.broken_image, size: 40, color: Colors.red),
          ),
        );
      },
    );

    if (esDecorativa) {
      return ExcludeSemantics(child: imageWidget);
    } else {
      return Semantics(
        label: descripcionSemantica,
        image: true,
        child: imageWidget,
      );
    }
  }
}
