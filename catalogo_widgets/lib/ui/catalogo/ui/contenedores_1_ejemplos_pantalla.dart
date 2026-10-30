import 'package:flutter/material.dart';

class Contenedores1EjemplosPantalla extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contenedores 1')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Container(
            height: 100,
            // color: Colors.blue,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            child: const Center(
              child: Text(
                'Contenedor 1',
                style: TextStyle(
                  color: Color.fromARGB(255, 3, 3, 3),
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            height: 100,
            // color: Colors.green,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            child: const Center(
              child: Text(
                'Contenedor 2',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            height: 100,
            // color: Colors.orange,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            child: const Center(
              child: Text(
                'Contenedor 3',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
