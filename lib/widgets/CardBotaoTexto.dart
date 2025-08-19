import 'package:flutter/material.dart';
import 'package:projetointheirskin/domain/BotaoTexto.dart';

class Cardbotaotexto extends StatefulWidget {

  BotaoTexto botaoTexto;

  Cardbotaotexto({
    required this.botaoTexto,
    super.key
  });

  @override
  State<Cardbotaotexto> createState() => _CardbotaotextoState();
}

class _CardbotaotextoState extends State<Cardbotaotexto> {
  BotaoTexto get botaoTexto => widget.botaoTexto;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      width: 100,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFc18e67),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))),
        child: Text(
          botaoTexto.titulo,
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
    );
  }
}
