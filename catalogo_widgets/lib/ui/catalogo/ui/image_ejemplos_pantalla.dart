import 'package:catalogo_widget/ui/core/ui/imagen_ruta.dart';
import 'package:catalogo_widget/ui/core/ui/imagen_remota.dart';
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
          // Image.network(
          //   'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
          //   height: 160,
          //   loadingBuilder: (context, child, progreso) {
          //     if (progreso == null) return child;
          //     return const SizedBox(
          //       height: 160,
          //       child: Center(child: CircularProgressIndicator()),
          //     );
          //   },
          // ),
          // SizedBox(height: 16),
          // TextoResumen(texto: 'Automono', maxLines: 1, centrado: true),
          // Image.asset('assets/imgs/automono.jpeg', height: 304),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'ImagenRuta',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text('Muestra una imagen en local.'),
                  SizedBox(height: 20),
                  Text(
                    'Propiedades',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'assetPath',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(
                          text: ': obligatorio. Texto de la ruta de la imagen en local.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'variante',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(
                          text: ': obligatorio. Tamaño de la imagen. Por defecto, variante.normal.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'descripcion',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(
                          text:
                              ': obligatorio. Texto descriptivo de la imagen.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Ejemplo de uso',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color(0xFFF3F4F6),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        border: Border.fromBorderSide(
                          BorderSide(color: Color(0xFFD1D5DB)),
                        ),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.all(16),
                        child: SelectableText(
                          "ImagenRuta(\n"
                          "  assetPath: 'src/assets/imagen.png',\n"
                          "  variante: variante.normal,\n"
                          "  descripcion: 'Imagen local',\n"
                          "),",
                          style: TextStyle(
                            fontFamily: 'monospace',
                            fontSize: 14,
                            height: 1.5,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'ImagenRemota',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text('Muestra una imagen en remoto.'),
                  SizedBox(height: 20),
                  Text(
                    'Propiedades',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'url',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(
                          text: ': obligatorio. Texto del enlace de la imagen.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'ajuste',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(
                          text: ': obligatorio. Escala la imagen dentro del BoxFit.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'decorativa',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(
                          text: ': obligatorio. Define si la imagen es decorativa o no.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'descripcion',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(
                          text: ': opcional. Texto descriptivo de la imagen.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Ejemplo de uso',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color(0xFFF3F4F6),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        border: Border.fromBorderSide(
                          BorderSide(color: Color(0xFFD1D5DB)),
                        ),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.all(16),
                        child: SelectableText(
                          "ImagenRemota(\n"
                          "  url: 'https://image.png',\n"
                          "  ajuste: BoxFit.cover,\n"
                          "  decorativa: false,\n"
                          "  descripcion: 'Imagen remota',\n"
                          "),",
                          style: TextStyle(
                            fontFamily: 'monospace',
                            fontSize: 14,
                            height: 1.5,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Resultado',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 12),
                  ImagenRuta(
                    assetPath: "assets/imgs/automono.jpeg",
                    descripcion: "Automono",
                    variante: VarianteImagenRuta.normal,
                  ),
                  SizedBox(height: 16),
                  ImagenRuta(
                    assetPath: "assets/imgs/automono.jpeg",
                    descripcion: "Automono",
                    variante: VarianteImagenRuta.panoramica,
                  ),
                  SizedBox(height: 16),
                  ImagenRemota(
                    url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY-LxeSChifW-I6dz_QKv7wrCPxuyzNywZOdgNYoI4Nw&s",
                    ajuste: BoxFit.cover,
                    decorativa: false,
                    descripcion: "Homelo chino",
                  ),
                  SizedBox(height: 16),
                  ImagenRemota(
                    url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY-LxeSChifW-I6dz_QKv7wrCPxuyzNywZOdgNYoI4Nw&s",
                    ajuste: BoxFit.contain,
                    decorativa: false,
                    descripcion: "Homelo chino",
                  ),
                  // ImagenRemota(
                  //   url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY-LxeSChifW-I6dz_QKv7wrCPxuyzNywZOdgNYoI4Nw&s",
                  //   ajuste: BoxFit.cover,
                  //   decorativa: false,
                  //   descripcion: "",
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
