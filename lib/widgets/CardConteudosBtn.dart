import 'package:flutter/material.dart';
import 'package:projetointheirskin/domain/ConteudosBtnInfo.dart';

class Cardconteudosbtn extends StatefulWidget {
  Conteudosbtninfo informacoes;

  Cardconteudosbtn({
    required this.informacoes,
    super.key
  });

  @override
  State<Cardconteudosbtn> createState() => _CardconteudosbtnState();
}

class _CardconteudosbtnState extends State<Cardconteudosbtn> {

  Conteudosbtninfo get informacoes => widget.informacoes;

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
          informacoes.titulo,
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
    );
  }
}
