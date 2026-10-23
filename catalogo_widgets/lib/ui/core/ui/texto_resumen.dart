import 'package:flutter/material.dart';

class TextoResumen extends StatelessWidget {
  final String texto;
  final int maxLines;
  final bool centrado;

  const TextoResumen({
    super.key,
    required this.texto,
    this.maxLines = 2,
    this.centrado = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textAlign: centrado ? TextAlign.center : TextAlign.start,
    );
  }
}
