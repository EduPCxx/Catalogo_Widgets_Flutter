import 'package:flutter/material.dart';

class ImagenRemota extends StatelessWidget {
  final String url;
  final BoxFit ajuste;
  final bool decorativa;
  final String? descripcion;

  ImagenRemota({
    super.key,
    required this.url,
    this.ajuste = BoxFit.cover,
    this.decorativa = false,
    this.descripcion,
  }) : assert(
         decorativa || (descripcion != null && descripcion.isNotEmpty),
         'Si la imagen no es decorativa, la descripción no puede estar vacía',
       );

  @override
  Widget build(BuildContext context) {
    final imageWidget = Image.network(
      url,
      fit: ajuste,
      height: 500.0,
      width: double.infinity,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }

        return const SizedBox(
          height: 200.0,
          width: double.infinity,
          child: Center(child: CircularProgressIndicator()),
        );
      },
      errorBuilder: (context, error, stackTrace) {
        return const SizedBox(
          height: 200.0,
          width: double.infinity,
          child: Center(
            child: Icon(Icons.broken_image, size: 40, color: Colors.red),
          ),
        );
      },
    );

    if (decorativa) {
      return ExcludeSemantics(child: imageWidget);
    }

    return Semantics(label: descripcion, image: true, child: imageWidget);
  }
}
