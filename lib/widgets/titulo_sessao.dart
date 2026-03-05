import 'package:flutter/material.dart';

class TituloSessao extends StatelessWidget {
    final String titulo;
  const TituloSessao({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Text(
      titulo,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
    );
  }
}
