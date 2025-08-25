import 'package:flutter/material.dart';
import 'package:projetointheirskin/domain/BotaoImagem.dart';

class Cardbotaoimagem extends StatefulWidget {

  Botaoimagem botaoimagem;

  Cardbotaoimagem({
    required this.botaoimagem,
    super.key
  });

  @override
  State<Cardbotaoimagem> createState() => _CardbotaoimagemState();
}

class _CardbotaoimagemState extends State<Cardbotaoimagem> {

  Botaoimagem get botaoimagem => widget.botaoimagem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 62,
          width: 100,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFc18e67),
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16))),
            child: Image.network(
              botaoimagem.urlImage,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(botaoimagem.tituloVideo, style: TextStyle(fontSize: 10, color: Color(0xFFa5591f))),
        Text(botaoimagem.autor, style: TextStyle(fontSize: 9, color: Color(0xFFd1a688)))
      ],
    );
  }
}
