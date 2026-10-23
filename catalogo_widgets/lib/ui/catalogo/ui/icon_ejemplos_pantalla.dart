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
          Center(
            child: SizedBox(
              child: IconButton(
                icon: Icon(Icons.warning),
                onPressed: null,
                tooltip: 'Quina vergonya',
              ),
            ),
          ),
          FilledButton.icon(
            onPressed: () {},
            icon: Icon(Icons.wifi_off),
            label: Text('GVA posans ya el intenet ostia'),
            style: FilledButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
