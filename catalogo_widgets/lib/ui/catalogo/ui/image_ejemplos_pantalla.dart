import 'package:catalogo_widget/ui/core/ui/texto_resumen.dart';
import 'package:flutter/material.dart';

class ImageEjemplosPantalla extends StatelessWidget {
  const ImageEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de Image')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Image.network(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            height: 160,
            loadingBuilder: (context, child, progreso) {
              if (progreso == null) return child;
              return const SizedBox(
                height: 160,
                child: Center(child: CircularProgressIndicator()),
              );
            },
          ),
          SizedBox(height: 16),
          TextoResumen(texto: 'Automono', maxLines: 1, centrado: true),
          Image.asset('assets/imgs/automono.jpeg', height: 304),
        ],
      ),
    );
  }
}
