import 'package:flutter/material.dart';
import 'package:projetointheirskin/domain/BotaoTexto.dart';

class Cardbotaotexto extends StatefulWidget {

  Botaotexto botaotexto;

  Cardbotaotexto({
    required this.botaotexto,
    super.key
  });

  @override
  State<Cardbotaotexto> createState() => _CardbotaotextoState();
}

class _CardbotaotextoState extends State<Cardbotaotexto> {

  Botaotexto get botaotexto => widget.botaotexto;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: 110,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFc18e67),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))),
        child: Text(
          botaotexto.titulo,
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
    );;
  }
}
