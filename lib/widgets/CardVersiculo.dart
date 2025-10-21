import 'package:flutter/material.dart';

import '../domain/Versiculo.dart';

class Cardversiculo extends StatefulWidget {
  Versiculo versiculo;

  Cardversiculo({
    required this.versiculo,
    super.key
  });

  @override
  State<Cardversiculo> createState() => _CardversiculoState();
}

class _CardversiculoState extends State<Cardversiculo> {

   Versiculo get versiculo => widget.versiculo;

  @override
  Widget build(BuildContext context) {
    return Text("${versiculo.texto}\n${versiculo.livro} ${versiculo.capitulo}:${versiculo.numero_versiculo}");
  }
}
