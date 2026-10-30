import 'package:catalogo_widget/ui/core/ui/icono_estado.dart';
import 'package:catalogo_widget/ui/core/ui/icono_favorito.dart';
import 'package:flutter/material.dart';

class IconEjemplosPantalla extends StatelessWidget {
  const IconEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de Icons')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Center(
          //   child: SizedBox(
          //     child: IconButton(
          //       icon: Icon(Icons.warning),
          //       onPressed: null,
          //       tooltip: 'Quina vergonya',
          //     ),
          //   ),
          // ),
          // FilledButton.icon(
          //   onPressed: () {},
          //   icon: Icon(Icons.wifi_off),
          //   label: Text('GVA posans ya el intenet ostia'),
          //   style: FilledButton.styleFrom(
          //     padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          //     backgroundColor: Colors.blue,
          //     foregroundColor: Colors.white,
          //   ),
          // ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'IconoEstado',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text('Muestra icono con tres estados.'),
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
                          text: 'estado',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(
                          text: ': obligatorio. Estado del icono. El símbolo, el color y la etiqueta cambian según el estado.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'tamaño',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(text: ': obligatorio. Tamaño del icono.'),
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
                          "IconoEstado(\n"
                          "  estado: EstadoRuta.completada,\n"
                          "  tamano: 32,\n"
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
                    'IconoFavorito',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text('Muestra icono de corazón vacío o lleno.'),
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
                          text: 'marcado',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(
                          text: ': obligatorio. Pinta el icono dependiendo de si el corazón está lleno o vacío.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'tamaño',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'monospace',
                          ),
                        ),
                        TextSpan(text: ': obligatorio. Tamaño del icono.'),
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
                          "IconoFavorito(\n"
                          "  marcado: true,\n"
                          "  tamano: 32,\n"
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
                  IconoEstado(estado: EstadoRuta.pendiente, tamano: 48),
                  IconoEstado(estado: EstadoRuta.completada, tamano: 48),
                  IconoEstado(estado: EstadoRuta.error, tamano: 48),
                  IconoFavorito(marcado: true, tamano: 48),
                  IconoFavorito(marcado: false, tamano: 48),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
